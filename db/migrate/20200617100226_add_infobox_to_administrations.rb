class AddInfoboxToAdministrations < ActiveRecord::Migration[6.0]
  def change
    add_column :administrations, :infobox, :text
  end
end
