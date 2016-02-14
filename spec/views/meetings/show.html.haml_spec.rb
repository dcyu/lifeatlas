require 'rails_helper'

RSpec.describe "meetings/show", :type => :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :person_id => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Location/)
  end
end
