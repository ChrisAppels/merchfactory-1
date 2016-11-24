class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  # before_action :session_cart
  helper_method :session_cart

  def after_sign_in_path_for(resource)
    if session_cart #your path
      shopping_cart_path(current_user.id)
    else
      root_path
    end
  end

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
