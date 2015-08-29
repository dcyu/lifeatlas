class AddItalianToBlockLists < ActiveRecord::Migration
  def change
    add_column :block_lists, :italian_notes, :text
  end
end
