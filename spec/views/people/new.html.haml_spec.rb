require 'rails_helper'

RSpec.describe "people/new", :type => :view do
  before(:each) do
    assign(:person, Person.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :facebook_link => "MyString",
      :linkedin_link => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_facebook_link[name=?]", "person[facebook_link]"

      assert_select "input#person_linkedin_link[name=?]", "person[linkedin_link]"
    end
  end
end
