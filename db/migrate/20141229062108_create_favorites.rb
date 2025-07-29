class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :answer

      t.timestamps
    end
  end
end
