require 'rails_helper'

RSpec.describe "stops/show", :type => :view do
  before(:each) do
    @stop = assign(:stop, Stop.create!(
      :aspiration_id => 1,
      :destination_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
