class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # before_action :session_cart
  helper_method :session_cart

  def session_cart
    if session[:shopping_cart_id]
      begin
        @shopping_cart = ShoppingCart.find(session[:shopping_cart_id])
      rescue ActiveRecord::RecordNotFound
        @shopping_cart = ShoppingCart.create
      end
    else
      @shopping_cart = ShoppingCart.create
    end
    session[:shopping_cart_id] = @shopping_cart.id
    @shopping_cart
  end
end
