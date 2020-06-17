class AddSubtitleToAdministrations < ActiveRecord::Migration[6.0]
  def change
    add_column :administrations, :subtitle, :string
  end
end
