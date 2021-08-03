class SaleProduct
  @@sale_products = {}

  # initialize how many units of a product is on sale for the week
  def initialize(name, units, price)

    @@sale_products[name] = {
      'units' => units,
      'price' => price
    }
  end

  def self.all
    return @@sale_products
  end
end
