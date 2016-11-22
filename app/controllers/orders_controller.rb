class OrdersController < ApplicationController

  def new
  end

  def create
    return redirect_to new_user_session_url unless current_user

    @order = Order.new
    total = 0
    shoppingcart = session_cart
    @order.order_items = shoppingcart.order_items
    @order.user_id = current_user.id
    @order.staff_id = User.second.id
    @order.status = "pending"
    @order.address_id = current_user.address_ids.first
    @order.order_items.each do |order_item|
      total += order_item.totalprice
    end
    @order.amount_cents = total
    @order.save
    shoppingcart.destroy
    redirect_to order_path(:id)
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
