require 'rails_helper'

RSpec.describe "favorites/new", :type => :view do
  before(:each) do
    assign(:favorite, Favorite.new(
      :title => "MyString",
      :answer => "MyString"
    ))
  end

  it "renders new favorite form" do
    render

    assert_select "form[action=?][method=?]", favorites_path, "post" do

      assert_select "input#favorite_title[name=?]", "favorite[title]"

      assert_select "input#favorite_answer[name=?]", "favorite[answer]"
    end
  end
end
