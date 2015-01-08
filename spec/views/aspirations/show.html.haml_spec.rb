require 'rails_helper'

RSpec.describe "aspirations/show", :type => :view do
  before(:each) do
    @aspiration = assign(:aspiration, Aspiration.create!(
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
