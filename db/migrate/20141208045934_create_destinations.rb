class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.date :arrived_on
      t.date :left_on
      t.string :lng
      t.string :lat

      t.timestamps
    end
  end
end
