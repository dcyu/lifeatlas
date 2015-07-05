require 'rails_helper'

RSpec.describe "block_lists/new", :type => :view do
  before(:each) do
    assign(:block_list, BlockList.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new block_list form" do
    render

    assert_select "form[action=?][method=?]", block_lists_path, "post" do

      assert_select "input#block_list_title[name=?]", "block_list[title]"

      assert_select "textarea#block_list_description[name=?]", "block_list[description]"
    end
  end
end
