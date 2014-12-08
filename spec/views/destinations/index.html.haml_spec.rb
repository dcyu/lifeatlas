require 'rails_helper'

RSpec.describe "destinations/index", :type => :view do
  before(:each) do
    assign(:destinations, [
      Destination.create!(
        :name => "Name",
        :lng => "Lng",
        :lat => "Lat"
      ),
      Destination.create!(
        :name => "Name",
        :lng => "Lng",
        :lat => "Lat"
      )
    ])
  end

  it "renders a list of destinations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lng".to_s, :count => 2
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
  end
end
