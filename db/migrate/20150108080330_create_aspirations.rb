class CreateAspirations < ActiveRecord::Migration
  def change
    create_table :aspirations do |t|
      t.text :description

      t.timestamps
    end
  end
end
