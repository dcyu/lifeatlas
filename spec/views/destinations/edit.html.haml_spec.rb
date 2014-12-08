require 'rails_helper'

RSpec.describe "destinations/edit", :type => :view do
  before(:each) do
    @destination = assign(:destination, Destination.create!(
      :name => "MyString",
      :lng => "MyString",
      :lat => "MyString"
    ))
  end

  it "renders the edit destination form" do
    render

    assert_select "form[action=?][method=?]", destination_path(@destination), "post" do

      assert_select "input#destination_name[name=?]", "destination[name]"

      assert_select "input#destination_lng[name=?]", "destination[lng]"

      assert_select "input#destination_lat[name=?]", "destination[lat]"
    end
  end
end
