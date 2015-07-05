class AddBlockListIdToWords < ActiveRecord::Migration
  def change
    add_column :words, :block_list_id, :integer
  end
end
