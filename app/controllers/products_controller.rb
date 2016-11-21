class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_product, only: [:show]

  def index
    if params[:category_id]
      @products = Category.find(params[:category_id]).products
    elsif params[:query] == "products"
      @products = Product.all
    elsif params[:query] && params[:query].length>0
      @products = Product.query(params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @shopping_cart = session_cart
    # @shopping_cart = ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end
end

private

def find_product
    @product = Product.find(params[:id])
end
