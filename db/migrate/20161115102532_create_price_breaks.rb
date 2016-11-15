class CreatePriceBreaks < ActiveRecord::Migration[5.0]
  def change
    create_table :price_breaks do |t|
      t.references :product, foreign_key: true
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
