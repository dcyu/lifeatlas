require 'rails_helper'

RSpec.describe "photos/index", :type => :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :picture => "",
        :post_id => 1,
        :description => "MyText"
      ),
      Photo.create!(
        :picture => "",
        :post_id => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
