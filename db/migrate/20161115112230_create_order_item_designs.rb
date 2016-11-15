class CreateOrderItemDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :order_item_designs do |t|
      t.references :order, foreign_key: true
      t.references :product_design, foreign_key: true

      t.timestamps
    end
  end
end
