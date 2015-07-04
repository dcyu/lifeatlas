class AddNotesToWords < ActiveRecord::Migration
  def change
    add_column :words, :mandarin_notes, :text
    add_column :words, :arabic_notes, :text
    add_column :words, :spanish_notes, :text
    add_column :words, :cantonese_notes, :text
    add_column :words, :swahili_notes, :text
    add_column :words, :french_notes, :text
    add_column :words, :russian_notes, :text
  end
end
