class CreateCandidates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :twitter_name
      t.timestamps
    end
  end
end
