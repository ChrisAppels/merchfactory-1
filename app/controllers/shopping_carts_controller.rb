class ShoppingCartsController < ApplicationController
  def index

  end

  def show
    @order_items = session_cart.order_items
    @shopping_cart = session_cart

    @total_price = @order_items.sum(&:totalprice)
  end

  def destroy

  end
end
