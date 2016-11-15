class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.find(params[:id])
    @order_item = Order_item.new
  end
end
