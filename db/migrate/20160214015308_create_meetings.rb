class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :person_id
      t.date :day
      t.string :location

      t.timestamps null: false
    end
  end
end
