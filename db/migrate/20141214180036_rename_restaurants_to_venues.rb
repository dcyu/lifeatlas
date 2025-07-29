class RenameRestaurantsToVenues < ActiveRecord::Migration[7.1]
  def change
    rename_table :restaurants, :venues
    rename_column :posts, :restaurant_id, :venue_id
  end
end
