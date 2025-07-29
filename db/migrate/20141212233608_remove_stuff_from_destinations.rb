class RemoveStuffFromDestinations < ActiveRecord::Migration[7.1]
  def change
    remove_column :destinations, :arrived_on, :string
    remove_column :destinations, :left_on, :string
  end
end
