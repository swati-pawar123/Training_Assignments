module Display

  def display_bill(items_quantity, summary_bill)
    purchased_products  = {}
    total_bill_price    = 0
    actual_total_price  = 0

    items_quantity.each do |product, no_of_items|
      purchased_products[product] = {
				units: no_of_items,
				price: summary_bill[product]
    	}
	    total_bill_price    += summary_bill[product]
	    actual_total_price  += (no_of_items * Product.all[product])
	  end

	  money_saved = (actual_total_price - total_bill_price).round(3)

	  puts "Item      Quantity       Price"
	  puts "--------------------------------------"
	  purchased_products.each do | item, detail|
	   puts "#{item}            #{detail[:units]}            #{detail[:price].round(3)}"
	  end
	   puts "Total price : Rs#{total_bill_price.round(3)}"
	   puts "You saved Rs#{money_saved.round(3)} today."
	end
end
