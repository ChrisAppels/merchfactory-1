class CreateProductDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :product_designs do |t|
      t.string :design_name
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
