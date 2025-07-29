class AddVisitedToDestinations < ActiveRecord::Migration[7.1]
  def change
    add_column :destinations, :visited, :boolean
  end
end
