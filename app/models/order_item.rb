class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :orderable, polymorphic: true
  has_many :order_item_designs
  validates :quantity, numericality: { greater_than: 0 }, presence: true

def totalprice
  (self.quantity * self.product.item_price_for_quantity(self.quantity).price_cents) / 100.0
end
end
