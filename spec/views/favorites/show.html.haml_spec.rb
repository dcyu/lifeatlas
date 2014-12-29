require 'rails_helper'

RSpec.describe "favorites/show", :type => :view do
  before(:each) do
    @favorite = assign(:favorite, Favorite.create!(
      :title => "Title",
      :answer => "Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Answer/)
  end
end
