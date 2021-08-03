require_relative 'product'
require_relative 'sale_product'
require_relative 'bill_calculator'

Product.new('milk', 30)
Product.new('bread', 40)
Product.new('banana', 35)
Product.new('apple', 100)

puts Product.all

SaleProduct.new('milk',2,50)
SaleProduct.new('bread',2,75)

price_calculator = PriceCalculator.new
price_calculator.generate_bill


=begin

Run=> ruby glosary_shop.rb

Output=>
{"milk"=>30, "bread"=>40, "banana"=>35, "apple"=>100}
Please enter all the items purchased separated by a comma:
milk,milk,bread,banana
{"milk"=>2, "bread"=>1, "banana"=>1}
Item      Quantity       Price
--------------------------------------
milk            2            50
bread            1            40
banana            1            35
Total price : Rs125
You saved Rs10 today.

=end