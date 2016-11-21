class Product < ApplicationRecord
  has_many :order_items
  has_many :product_designs
  has_many :product_templates
  has_many :pictures
  has_many :features
  has_many :price_breaks
  has_many :product_categories

  def item_price_for_quantity(quantity)
    price_breaks.where("quantity <= #{quantity}").order(:quantity).last
  end

  def sum_price_for_quantity(quantity)
    quantity * item_price_for_quantity(quantity).price_cents
  end
end
