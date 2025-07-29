class ChangeTweetIdToTweets < ActiveRecord::Migration[7.1]
  def change
    remove_column :tweets, :tweet_id, :integer
    add_column :tweets, :tweet_id, :string
  end
end
