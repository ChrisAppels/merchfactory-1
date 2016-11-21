class AddAmountCentsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :amount_cents, :integer
    add_column :orders, :payment, :json
  end
end
