class AddEsperantoToWords < ActiveRecord::Migration
  def change
    add_column :words, :esperanto, :string
    add_column :words, :esperanto_notes, :text
  end
end
