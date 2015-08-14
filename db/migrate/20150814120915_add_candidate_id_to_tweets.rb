class AddCandidateIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :candidate_id, :integer
    remove_column :tweets, :basic_user, :string
  end
end
