class OrderItemsController < ApplicationController

  def new
  end

  def create
    session_cart
    @order_item = OrderItem.new(order_item_params)
    @order_item.product = Product.find(params[:product_id])
    @order_item.orderable = @shopping_cart # ShoppingCart.find(params[:shopping_cart_id])
    @order_item.quantity = params[:order_item][:quantity]
    @order_item.save
    respond_to do |format|
      format.html { redirect_to product_path @order_item.product }
      format.js # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @shopping_cart = ShoppingCart.find(params[:shopping_cart_id])
    @order_item.destroy
    redirect_to shopping_cart_path(@shopping_cart)
  end


private

  def order_item_params
     params.require(:order_item).permit(:product, :orderable, :quantity)
  end
end
