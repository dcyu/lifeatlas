class AddSubjectIdToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :subject_id, :integer
  end
end
