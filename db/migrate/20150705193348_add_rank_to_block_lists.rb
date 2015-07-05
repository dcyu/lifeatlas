class AddRankToBlockLists < ActiveRecord::Migration
  def change
    add_column :block_lists, :rank, :integer
  end
end
