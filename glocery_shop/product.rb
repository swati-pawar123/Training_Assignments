class Product
  @@products = {}

  #constructor
  def initialize(name, price)
    @@products[name] = price
  end

  def self.all
    return @@products
  end
end