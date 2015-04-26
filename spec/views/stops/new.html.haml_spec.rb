require 'rails_helper'

RSpec.describe "stops/new", :type => :view do
  before(:each) do
    assign(:stop, Stop.new(
      :aspiration_id => 1,
      :destination_id => 1
    ))
  end

  it "renders new stop form" do
    render

    assert_select "form[action=?][method=?]", stops_path, "post" do

      assert_select "input#stop_aspiration_id[name=?]", "stop[aspiration_id]"

      assert_select "input#stop_destination_id[name=?]", "stop[destination_id]"
    end
  end
end
