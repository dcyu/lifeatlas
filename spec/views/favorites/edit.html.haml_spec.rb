require 'rails_helper'

RSpec.describe "favorites/edit", :type => :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      :title => "MyString",
      :answer => "MyString"
    ))
  end

  it "renders the edit favorite form" do
    render

    assert_select "form[action=?][method=?]", favorite_path(@favorite), "post" do

      assert_select "input#favorite_title[name=?]", "favorite[title]"

      assert_select "input#favorite_answer[name=?]", "favorite[answer]"
    end
  end
end
