require 'rails_helper'

RSpec.describe "favorites/index", :type => :view do
  before(:each) do
    assign(:favorites, [
      Favorite.create!(
        :title => "Title",
        :answer => "Answer"
      ),
      Favorite.create!(
        :title => "Title",
        :answer => "Answer"
      )
    ])
  end

  it "renders a list of favorites" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Answer".to_s, :count => 2
  end
end
