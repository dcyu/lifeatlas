require 'rails_helper'

RSpec.describe "aspirations/new", :type => :view do
  before(:each) do
    assign(:aspiration, Aspiration.new(
      :description => "MyText"
    ))
  end

  it "renders new aspiration form" do
    render

    assert_select "form[action=?][method=?]", aspirations_path, "post" do

      assert_select "textarea#aspiration_description[name=?]", "aspiration[description]"
    end
  end
end
