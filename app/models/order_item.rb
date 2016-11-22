class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :orderable, polymorphic: true
  has_many :order_item_designs

def totalprice
  self.quantity * self.product.item_price_for_quantity(self.quantity).price_cents
end

end
