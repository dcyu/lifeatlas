class AddSongToPost < ActiveRecord::Migration
  def change
    add_column :posts, :song, :string
  end
end
