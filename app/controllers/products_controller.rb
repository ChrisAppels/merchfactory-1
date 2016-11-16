class ProductsController < ApplicationController
  def index
  end

  def show
    @shopping_cart = session_cart
    # @shopping_cart = ShoppingCart.create
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end
end
