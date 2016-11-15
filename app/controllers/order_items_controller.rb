class OrderItemsController < ApplicationController

  def new
    @order_item = Order_item.new
  end

  def create
    @order_item = Order_item.new
  end
end
