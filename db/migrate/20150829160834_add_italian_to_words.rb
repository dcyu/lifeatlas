class AddItalianToWords < ActiveRecord::Migration
  def change
    add_column :words, :italian, :string
    add_column :words, :italian_notes, :text
  end
end
