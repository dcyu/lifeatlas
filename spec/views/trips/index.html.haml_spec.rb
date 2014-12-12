require 'rails_helper'

RSpec.describe "trips/index", :type => :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :destination_id => 1
      ),
      Trip.create!(
        :destination_id => 1
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
