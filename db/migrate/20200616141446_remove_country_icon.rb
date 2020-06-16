class RemoveCountryIcon < ActiveRecord::Migration[6.0]
  def change
    remove_column :countries, :icon, :string
  end
end
