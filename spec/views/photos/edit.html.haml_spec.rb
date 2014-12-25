require 'rails_helper'

RSpec.describe "photos/edit", :type => :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :picture => "",
      :post_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input#photo_picture[name=?]", "photo[picture]"

      assert_select "input#photo_post_id[name=?]", "photo[post_id]"

      assert_select "textarea#photo_description[name=?]", "photo[description]"
    end
  end
end
