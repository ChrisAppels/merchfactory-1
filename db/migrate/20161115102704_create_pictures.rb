class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.references :product, foreign_key: true
      t.string :url
      t.string :role

      t.timestamps
    end
  end
end
