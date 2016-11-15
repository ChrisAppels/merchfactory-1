class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  has_many :order_item_designs
end
