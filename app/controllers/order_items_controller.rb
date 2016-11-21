class OrderItemsController < ApplicationController

  def new
  end

  def create
    @shopping_cart = session_cart
    @order_item = OrderItem.new(order_item_params)
    @order_item.product = Product.find(params[:product_id])
    @order_item.orderable = ShoppingCart.find(params[:shopping_cart_id])
    @order_item.quantity = params[:order_item][:quantity]
    @order_item.save!
    respond_to do |format|
      format.html { redirect_to product_path @order_item.product }
      format.js # <-- will render `app/views/reviews/create.js.erb`
    end
  end

private

def order_item_params
   params.require(:order_item).permit(:product, :orderable, :quantity)
end
end
