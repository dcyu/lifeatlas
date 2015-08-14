class ChangeTweetIdToTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :tweet_id, :integer
    add_column :tweets, :tweet_id, :string
  end
end
