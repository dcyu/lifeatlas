require 'rails_helper'

RSpec.describe "words/show", :type => :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      :english => "English",
      :spanish => "Spanish"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/English/)
    expect(rendered).to match(/Spanish/)
  end
end
