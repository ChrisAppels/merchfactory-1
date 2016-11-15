class ProductDesign < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :product_design_files, :order_item_designs
end
