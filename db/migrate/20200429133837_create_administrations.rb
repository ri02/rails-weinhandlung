class CreateAdministrations < ActiveRecord::Migration[5.2]
  def change
    create_table :administrations do |t|
      t.string :name
      t.string :opening_time
      t.string :street_name
      t.integer :street_number
      t.integer :postal_code
      t.string :city
      t.string :telephone_number
      t.string :email

      t.timestamps
    end
  end
end
