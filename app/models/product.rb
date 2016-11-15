class Product < ApplicationRecord
  has_many :order_items, :product_designs, :product_templates, :pictures, :features, :price_breaks, :product_categories
end
