class AddLatLngToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :lat, :string
    add_column :venues, :lng, :string
  end
end
