require "./calculate_bill"
require "./display_bill"

include Bill
include Display

class PriceCalculator

  def initiate_billing
    # Take user input of customer items
    input = get_input.split(',')
    @purchased_items = input
    if @purchased_items.any?
      quantity = count_items
      price = calculate_bill(quantity)
      display_bill(price, quantity)
    else
      puts "First add items to generate bill"
    end
  end
end
