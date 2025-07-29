class AddItalianToWords < ActiveRecord::Migration[7.1]
  def change
    add_column :words, :italian, :string
    add_column :words, :italian_notes, :text
  end
end
