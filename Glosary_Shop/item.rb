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

