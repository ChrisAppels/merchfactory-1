class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :orderable, polymorphic: true
  has_many :order_item_designs
  validates :quantity, :numericality => { :greater_than => 0 }

def totalprice
  (self.quantity * self.product.item_price_for_quantity(self.quantity).price_cents) / 100.00
end
end
