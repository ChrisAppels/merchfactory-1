class ShoppingCart < ApplicationRecord
  has_many :order_items, as: :orderable
end
