class AddRestaurantIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :restaurant_id, :integer
  end
end
