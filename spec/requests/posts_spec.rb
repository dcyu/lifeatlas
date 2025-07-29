require 'rails_helper'

RSpec.describe "Posts", :type => :request do
  let(:user) { FactoryBot.create(:user) }
  let(:destination) { FactoryBot.create(:destination, user: user) }
  
  before do
    sign_in user
  end
  
  describe "GET /destinations/:destination_id/posts" do
    it "works! (now write some real specs)" do
      get destination_posts_path(destination)
      expect(response.status).to be(200)
    end
  end
end
