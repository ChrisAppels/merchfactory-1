class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :orderable, polymorphic: true
  has_many :order_item_designs
end
