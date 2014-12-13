require 'rails_helper'

RSpec.describe "restaurants/edit", :type => :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :destination_id => 1
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input#restaurant_name[name=?]", "restaurant[name]"

      assert_select "input#restaurant_destination_id[name=?]", "restaurant[destination_id]"
    end
  end
end
