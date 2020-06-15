class AddPriceWithMoneyrails < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :price, :float
    add_monetize :products, :price, currency: { present: false }
  end
end
