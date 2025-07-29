class AddTitleToAspirations < ActiveRecord::Migration[7.1]
  def change
    add_column :aspirations, :title, :string
  end
end
