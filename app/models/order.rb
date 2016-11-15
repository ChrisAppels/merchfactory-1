class Order < ApplicationRecord
  belongs_to :address
  belongs_to :user
  belongs_to :staff, class_name: 'User'
  has_many :order_items
end
