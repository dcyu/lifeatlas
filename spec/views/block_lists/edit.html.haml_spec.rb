require 'rails_helper'

RSpec.describe "block_lists/edit", :type => :view do
  before(:each) do
    @block_list = assign(:block_list, BlockList.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit block_list form" do
    render

    assert_select "form[action=?][method=?]", block_list_path(@block_list), "post" do

      assert_select "input#block_list_title[name=?]", "block_list[title]"

      assert_select "textarea#block_list_description[name=?]", "block_list[description]"
    end
  end
end
