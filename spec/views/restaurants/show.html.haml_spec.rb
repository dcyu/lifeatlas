require 'rails_helper'

RSpec.describe "restaurants/show", :type => :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "Name",
      :destination_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
