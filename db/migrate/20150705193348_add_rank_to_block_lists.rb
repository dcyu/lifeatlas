class AddRankToBlockLists < ActiveRecord::Migration[7.1]
  def change
    add_column :block_lists, :rank, :integer
  end
end
