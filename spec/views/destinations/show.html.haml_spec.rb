require 'rails_helper'

RSpec.describe "destinations/show", :type => :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
      :name => "Name",
      :lng => "Lng",
      :lat => "Lat"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Lng/)
    expect(rendered).to match(/Lat/)
  end
end
