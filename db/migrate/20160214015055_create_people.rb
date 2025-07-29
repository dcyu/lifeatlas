class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :facebook_link
      t.string :linkedin_link

      t.timestamps null: false
    end
  end
end
