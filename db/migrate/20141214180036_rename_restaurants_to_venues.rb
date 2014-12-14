class RenameRestaurantsToVenues < ActiveRecord::Migration
  def change
    rename_table :restaurants, :venues
    rename_column :posts, :restaurant_id, :venue_id
  end
end
