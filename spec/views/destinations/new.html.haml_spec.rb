require 'rails_helper'

RSpec.describe "destinations/new", :type => :view do
  before(:each) do
    assign(:destination, Destination.new(
      :name => "MyString",
      :lng => "MyString",
      :lat => "MyString"
    ))
  end

  it "renders new destination form" do
    render

    assert_select "form[action=?][method=?]", destinations_path, "post" do

      assert_select "input#destination_name[name=?]", "destination[name]"

      assert_select "input#destination_lng[name=?]", "destination[lng]"

      assert_select "input#destination_lat[name=?]", "destination[lat]"
    end
  end
end
