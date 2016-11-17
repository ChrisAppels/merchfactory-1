class RemoveOrderIdFromOrderItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :orderable, polymorphic: true, index: true
    remove_column :order_items, :order_id
  end
end
