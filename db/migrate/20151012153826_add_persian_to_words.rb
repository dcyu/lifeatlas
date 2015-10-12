class AddPersianToWords < ActiveRecord::Migration
  def change
    add_column :words, :persian, :string
    add_column :words, :persian_notes, :text
    add_column :block_lists, :persian_notes, :text
  end
end
