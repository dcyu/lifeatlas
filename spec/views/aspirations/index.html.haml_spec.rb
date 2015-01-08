require 'rails_helper'

RSpec.describe "aspirations/index", :type => :view do
  before(:each) do
    assign(:aspirations, [
      Aspiration.create!(
        :description => "MyText"
      ),
      Aspiration.create!(
        :description => "MyText"
      )
    ])
  end

  it "renders a list of aspirations" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
