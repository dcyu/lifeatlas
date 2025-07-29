class CreateStops < ActiveRecord::Migration[7.1]
  def change
    create_table :stops do |t|
      t.integer :aspiration_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
