require 'rails_helper'

RSpec.describe "Restaurants", :type => :request do
  let(:user) { FactoryBot.create(:user) }
  
  before do
    sign_in user
  end
  
  describe "GET /venues" do
    it "works! (now write some real specs)" do
      get venues_path
      expect(response.status).to be(200)
    end
  end
end
