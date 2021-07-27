module Display

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