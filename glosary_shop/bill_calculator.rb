require "./display_bill"
include Display

class PriceCalculator

  def generate_bill
    # Take user input of customer items
    puts "Please enter all the items purchased separated by a comma:"
    @customer_items = gets.chomp.split(/,/)

    items_quantity  = Hash.new(0)
    # To count items purchased by customer
    @customer_items.each { |item| items_quantity[item] += 1 }

    summary_bill = calculate_total_bill(items_quantity)
    display_bill(items_quantity, summary_bill)
  end



  private

  def calculate_total_bill(items_quantity)
    summary = Hash.new()
    puts items_quantity
    items_quantity.each do |product, value|
      selling_price = Product.all[product]
      sale_details  = SaleProduct.all[product]

      # If No sale products are present, calculate the normal price
      if sale_details.nil?
        cost_price = items_quantity[product] * selling_price

      else # Calculate the sale price and any extra products than the sale units
        discount_price = (items_quantity[product] / sale_details['units']) * sale_details['price']

        cost_price      =  discount_price +  ((items_quantity[product] % sale_details['units']) * selling_price)
      end

      summary[product]  = cost_price
    end
    return summary
  end

end
