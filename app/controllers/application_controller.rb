class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # before_action :session_cart
  helper_method :session_cart

  def session_cart
    if session[:shopping_cart_id]
      begin
        ShoppingCart.find(session[:shopping_cart_id])
      rescue ActiveRecord::RecordNotFound
        ShoppingCart.create
      end
    else
      ShoppingCart.create
    end
  end
end
