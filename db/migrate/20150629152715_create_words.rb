class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :english
      t.string :mandarin
      t.string :arabic
      t.string :spanish
      t.string :cantonese
      t.string :swahili
      t.string :french
      t.string :russian

      t.timestamps
    end
  end
end
