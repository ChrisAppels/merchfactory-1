class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :address, foreign_key: true
      t.references :user, foreign_key: true
      # t.references :staff, references: :users, foreign_key: true,
      t.integer :staff_id, foreign_key: true, index: true
      t.timestamps
    end
  end
end
