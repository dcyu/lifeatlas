require 'rails_helper'

RSpec.describe "aspirations/edit", :type => :view do
  before(:each) do
    @aspiration = assign(:aspiration, Aspiration.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit aspiration form" do
    render

    assert_select "form[action=?][method=?]", aspiration_path(@aspiration), "post" do

      assert_select "textarea#aspiration_description[name=?]", "aspiration[description]"
    end
  end
end
