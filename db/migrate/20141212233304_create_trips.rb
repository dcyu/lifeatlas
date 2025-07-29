class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.date :arrived_on
      t.date :left_on
      t.integer :destination_id

      t.timestamps
    end
  end
end
