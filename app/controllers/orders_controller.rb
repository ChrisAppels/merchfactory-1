class OrdersController < ApplicationController

  def new
  end

  def create
    @order = Order.new
    shoppingcart = session_cart
    @order.order_items = shoppingcart.order_items
    @order.user_id = current_user.id
    @order.staff_id = User.second.id
    @order.status = "pending"
    @order.address_id = current_user.address_ids.first
    @order.save!
    redirect_to order_path(:id)
    # redirect_to new_order_payment_path(@order)
  end

  def show
    @order = current_user.orders.last
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
