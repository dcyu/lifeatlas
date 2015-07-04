require 'rails_helper'

RSpec.describe "words/index", :type => :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        :english => "English",
        :spanish => "Spanish"
      ),
      Word.create!(
        :english => "English",
        :spanish => "Spanish"
      )
    ])
  end

  it "renders a list of words" do
    render
    assert_select "tr>td", :text => "English".to_s, :count => 2
    assert_select "tr>td", :text => "Spanish".to_s, :count => 2
  end
end
