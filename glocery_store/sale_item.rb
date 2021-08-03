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