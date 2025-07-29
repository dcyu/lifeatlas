class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :basic_user
      t.string :posted_time
      t.text :text

      t.timestamps
    end
  end
end
