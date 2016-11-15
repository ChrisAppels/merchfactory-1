class CreateProductDesignFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :product_design_files do |t|
      t.references :product_design, foreign_key: true
      t.string :label
      t.string :design_file

      t.timestamps
    end
  end
end
