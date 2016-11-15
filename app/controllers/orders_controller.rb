class OrdersController < ApplicationController
  def create
  end

  def show
    @order_item = Order_item.new
  end

  def checkout
  end

  def payment
  end

  def confirmation
  end

  def index
  end
end
