require 'rails_helper'

RSpec.describe "meetings/new", :type => :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      :person_id => 1,
      :location => "MyString"
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input#meeting_person_id[name=?]", "meeting[person_id]"

      assert_select "input#meeting_location[name=?]", "meeting[location]"
    end
  end
end
