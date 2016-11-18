class ShoppingCartsController < ApplicationController
  def index

  end

  def show
    @order_items = session_cart.order_items
    @shopping_cart = session_cart
  end

  def destroy

  end
end
