class AddMonetizeToPriceBreaks < ActiveRecord::Migration[5.0]
  def change
    remove_column :price_breaks, :price
    add_monetize :price_breaks, :price, currency: { present: false }
  end
end
