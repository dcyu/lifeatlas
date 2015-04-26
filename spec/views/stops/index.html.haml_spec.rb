require 'rails_helper'

RSpec.describe "stops/index", :type => :view do
  before(:each) do
    assign(:stops, [
      Stop.create!(
        :aspiration_id => 1,
        :destination_id => 2
      ),
      Stop.create!(
        :aspiration_id => 1,
        :destination_id => 2
      )
    ])
  end

  it "renders a list of stops" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
