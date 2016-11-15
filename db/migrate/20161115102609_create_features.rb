class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.string :description
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
