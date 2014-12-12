class RemoveStuffFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :arrived_on, :string
    remove_column :destinations, :left_on, :string
  end
end
