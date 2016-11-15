class Product < ApplicationRecord
  has_many :order_items
  has_many :product_designs
  has_many :product_templates
  has_many :pictures
  has_many :features
  has_many :price_breaks
  has_many :product_categories
end
