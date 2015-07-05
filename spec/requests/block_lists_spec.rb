require 'rails_helper'

RSpec.describe "BlockLists", :type => :request do
  describe "GET /block_lists" do
    it "works! (now write some real specs)" do
      get block_lists_path
      expect(response.status).to be(200)
    end
  end
end
