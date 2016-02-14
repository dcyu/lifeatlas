require 'rails_helper'

RSpec.describe "meetings/index", :type => :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        :person_id => 1,
        :location => "Location"
      ),
      Meeting.create!(
        :person_id => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
