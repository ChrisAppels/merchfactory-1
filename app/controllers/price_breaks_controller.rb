class PriceBreaksController < ApplicationController

  def calculate(order_item)
    id = 0
    pricebreaks = PriceBreak.find(order_item.product_id)
    pricebreaks.each do |pricebreak|
    if  order_item.quantity >= pricebreak.quantity
      id +=1
      @price = pricebreak[id: id]
      raise
    end
  end


end
end
