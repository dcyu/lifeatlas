class AddTitleToAspirations < ActiveRecord::Migration
  def change
    add_column :aspirations, :title, :string
  end
end
