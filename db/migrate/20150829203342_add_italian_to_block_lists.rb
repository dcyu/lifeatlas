class AddItalianToBlockLists < ActiveRecord::Migration[7.1]
  def change
    add_column :block_lists, :italian_notes, :text
  end
end
