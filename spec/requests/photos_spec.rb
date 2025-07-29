require 'rails_helper'

RSpec.describe "Photos", :type => :request do
  let(:user) { FactoryBot.create(:user) }
  let(:destination) { FactoryBot.create(:destination, user: user) }
  let(:post) { FactoryBot.create(:post, destination: destination) }
  
  before do
    sign_in user
  end
  
  describe "GET /destinations/:destination_id/posts/:post_id/photos" do
    it "works! (now write some real specs)" do
      get destination_post_photos_path(destination, post)
      expect(response.status).to be(200)
    end
  end
end
