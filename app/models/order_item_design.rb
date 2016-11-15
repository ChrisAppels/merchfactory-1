class OrderItemDesign < ApplicationRecord
  belongs_to :order
  belongs_to :product_design
end
