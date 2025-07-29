class AddEsperantoToWords < ActiveRecord::Migration[7.1]
  def change
    add_column :words, :esperanto, :string
    add_column :words, :esperanto_notes, :text
  end
end
