class AddSongToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :song, :string
  end
end
