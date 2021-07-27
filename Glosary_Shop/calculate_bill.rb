module Bill

  def get_input
    puts "\nPlease enter the items purchased separated by a comma"
    response = gets.chomp
  end

  def count_items
    @purchased_items.inject(Hash.new(0)) do |quantity, item|
      quantity[item] += 1
      quantity
    end
  end

  def calculate_bill(quantity)
    puts quantity
    quantity.map do |item,value|
      items = Item.all[item]
      sale_items = SaleItem.all[item]

      # If No sale products are present, calculate the normal price
      value = if sale_items.nil?
        quantity[item] * items
      else
      # Calculate the sale price and any extra products than the sale units
        (((quantity[item]/sale_items['units'])) * sale_items['price']) + ((quantity[item] % sale_items['units']) * items)
      end
      [item, value]
    end.to_h

  end

end