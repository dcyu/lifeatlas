class AddNotesToBlockLists < ActiveRecord::Migration
  def change
    add_column :block_lists, :mandarin_notes, :text
    add_column :block_lists, :arabic_notes, :text
    add_column :block_lists, :spanish_notes, :text
    add_column :block_lists, :cantonese_notes, :text
    add_column :block_lists, :swahili_notes, :text
    add_column :block_lists, :french_notes, :text
    add_column :block_lists, :russian_notes, :text
  end
end
