require 'rails_helper'

RSpec.describe "block_lists/show", :type => :view do
  before(:each) do
    @block_list = assign(:block_list, BlockList.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
