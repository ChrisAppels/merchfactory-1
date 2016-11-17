class ProductsController < ApplicationController
  def index
  end

  def show
    @shopping_cart = session_cart
    # @shopping_cart = ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end
end
