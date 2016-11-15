class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_roles
  has_many :orders
  has_many :addresses
  has_many :product_designs
  has_many :staff_orders, class_name: "Order", foreign_key: :staff_id
end

