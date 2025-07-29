class AddPersianToWords < ActiveRecord::Migration[7.1]
  def change
    add_column :words, :persian, :string
    add_column :words, :persian_notes, :text
    add_column :block_lists, :persian_notes, :text
  end
end
