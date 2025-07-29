class AddPrivateToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :private, :boolean
  end
end
