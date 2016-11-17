class ShoppingCartsController < ApplicationController
  def index

  end

  def show
    @order_items = session_cart.order_items
    @pricebreak = PriceBreak.new
  end

  def destroy

  end
end
