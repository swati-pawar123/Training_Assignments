require_relative 'item'
require_relative 'sale_item'
require_relative 'price_calculater'

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

Run=>ruby glocery_shop.rb

Output=>

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