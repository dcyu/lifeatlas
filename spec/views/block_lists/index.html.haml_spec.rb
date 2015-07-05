require 'rails_helper'

RSpec.describe "block_lists/index", :type => :view do
  before(:each) do
    assign(:block_lists, [
      BlockList.create!(
        :title => "Title",
        :description => "MyText"
      ),
      BlockList.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of block_lists" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
