class AddAmountCentsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :amount_cents, :integer
  end
end
