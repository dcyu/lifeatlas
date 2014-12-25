class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment :picture
      t.integer :post_id
      t.text :description

      t.timestamps
    end
  end
end
