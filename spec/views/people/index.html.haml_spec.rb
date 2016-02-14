require 'rails_helper'

RSpec.describe "people/index", :type => :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :facebook_link => "Facebook Link",
        :linkedin_link => "Linkedin Link"
      ),
      Person.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :facebook_link => "Facebook Link",
        :linkedin_link => "Linkedin Link"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Link".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin Link".to_s, :count => 2
  end
end
