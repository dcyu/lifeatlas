class CreateBlockLists < ActiveRecord::Migration[7.1]
  def change
    create_table :block_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
