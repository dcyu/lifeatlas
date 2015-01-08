require 'rails_helper'

RSpec.describe "Aspirations", :type => :request do
  describe "GET /aspirations" do
    it "works! (now write some real specs)" do
      get aspirations_path
      expect(response.status).to be(200)
    end
  end
end
