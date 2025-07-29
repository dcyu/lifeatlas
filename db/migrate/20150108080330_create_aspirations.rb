class CreateAspirations < ActiveRecord::Migration[7.1]
  def change
    create_table :aspirations do |t|
      t.text :description

      t.timestamps
    end
  end
end
