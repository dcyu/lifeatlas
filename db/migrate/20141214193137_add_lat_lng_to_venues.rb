class AddLatLngToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :lat, :string
    add_column :venues, :lng, :string
  end
end
