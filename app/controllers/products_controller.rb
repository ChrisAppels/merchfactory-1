class ProductsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
before_action :find_product, only: [:show]

  def index
    if params[:query] == "products"
    return @products = Product.all
  elsif params[:query] && params[:query].length>0
    @products = Product.query(params[:query])
  else
    @products = Product.all
  end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = Order_item.new
  end
end

private

def find_product
    @product = Product.find(params[:id])
end
