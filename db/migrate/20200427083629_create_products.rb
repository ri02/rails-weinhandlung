class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.text :description
      t.integer :year
      t.float :price
      t.float :volume
      t.references :country, foreign_key: true
      t.references :header, foreign_key: true
      t.boolean :premium,  default: false
      t.boolean :fresh, default: false
      t.boolean :barthel_special, default: false
      t.references :winery, foreign_key: true

      t.timestamps
    end
  end
end
