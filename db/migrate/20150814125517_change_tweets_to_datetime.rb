class ChangeTweetsToDatetime < ActiveRecord::Migration[7.1]
  def change
    remove_column :tweets, :posted_time, :string
    add_column :tweets, :posted_time, :datetime
  end
end
