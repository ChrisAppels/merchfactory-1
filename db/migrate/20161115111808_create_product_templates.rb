class CreateProductTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :product_templates do |t|
      t.string :template_file
      t.string :name
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
