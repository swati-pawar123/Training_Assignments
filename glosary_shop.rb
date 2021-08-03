class Item
  @@items = {}

  # Constructor
  def initialize(name, price)
    @@items[name] = price
  end

  def self.all
    @@items
  end
end

class SaleItem
  @@sale_items = {}
  # initialize how many units of a product is on sale for the week
  def initialize(name, units, price)
    @@sale_items[name] = { 'units' => units, 'price' => price }
  end

  def self.all
    @@sale_items
  end
end

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

  private

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

    def display_bill(price, quantity)
      billing_items = quantity.each_with_object(price) do |(key,value), billing_items|
        billing_items[key] = {'units' => value, 'price' => price[key]}
      end

      total_price = billing_items.inject(0) do |total, (item,value)|
        total + value['price']
      end

      actual_price = quantity.inject(0) do |total, (item,units)|
        total + (units * Item.all[item])
      end

      puts "Item     Quantity      Price"
      puts "--------------------------------------"
      billing_items.each do |item, value|
        puts "#{item.ljust(10)} #{value['units']}           Rs.#{value['price'].round(3)}"
      end
      puts "Total price : Rs.#{total_price.round(3)}"
      puts "You saved Rs.#{(actual_price - total_price).round(3)} today."
    end
end


Item.new('milk', 30)
Item.new('bread', 40)
Item.new('banana', 35)
Item.new('apple', 100)

puts Item.all

SaleItem.new('milk',2,50)
SaleItem.new('bread',2,75)

price_calculator = PriceCalculator.new
puts price_calculator.initiate_billing

=begin

Run => ruby glosary_shop.rb

Output =>
{"milk"=>30, "bread"=>40, "banana"=>35, "apple"=>100}

Please enter the items purchased separated by a comma
milk,milk,bread,banana
Item     Quantity      Price
--------------------------------------
milk       2           Rs.50
bread      1           Rs.40
banana     1           Rs.35
Total price : Rs.125
You saved Rs.10 today.

=end