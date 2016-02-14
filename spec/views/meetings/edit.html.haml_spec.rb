require 'rails_helper'

RSpec.describe "meetings/edit", :type => :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :person_id => 1,
      :location => "MyString"
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input#meeting_person_id[name=?]", "meeting[person_id]"

      assert_select "input#meeting_location[name=?]", "meeting[location]"
    end
  end
end
