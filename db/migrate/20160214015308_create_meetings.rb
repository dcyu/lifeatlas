class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.integer :person_id
      t.date :day
      t.string :location

      t.timestamps null: false
    end
  end
end
