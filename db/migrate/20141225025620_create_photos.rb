class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.integer :post_id
      t.text :description

      t.timestamps
    end
  end
end
