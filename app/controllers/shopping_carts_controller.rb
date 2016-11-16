class ShoppingCartsController < ApplicationController
  def index

  end

  def show
    @order_items = session_cart.order_items
  end

  def destroy

  end
end
