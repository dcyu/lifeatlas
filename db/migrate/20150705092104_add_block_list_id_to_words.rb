class AddBlockListIdToWords < ActiveRecord::Migration[7.1]
  def change
    add_column :words, :block_list_id, :integer
  end
end
