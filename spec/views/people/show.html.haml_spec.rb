require 'rails_helper'

RSpec.describe "people/show", :type => :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :facebook_link => "Facebook Link",
      :linkedin_link => "Linkedin Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Facebook Link/)
    expect(rendered).to match(/Linkedin Link/)
  end
end
