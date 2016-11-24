class PagesController < ApplicationController
  def home
    @products = Product.latest.limit_for_homepage
  end
end
