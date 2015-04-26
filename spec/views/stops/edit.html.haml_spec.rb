require 'rails_helper'

RSpec.describe "stops/edit", :type => :view do
  before(:each) do
    @stop = assign(:stop, Stop.create!(
      :aspiration_id => 1,
      :destination_id => 1
    ))
  end

  it "renders the edit stop form" do
    render

    assert_select "form[action=?][method=?]", stop_path(@stop), "post" do

      assert_select "input#stop_aspiration_id[name=?]", "stop[aspiration_id]"

      assert_select "input#stop_destination_id[name=?]", "stop[destination_id]"
    end
  end
end
