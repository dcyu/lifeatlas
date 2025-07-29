require "rails_helper"

RSpec.describe PhotosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/destinations/1/posts/1/photos").to route_to("photos#index", :destination_id => "1", :post_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/destinations/1/posts/1/photos/new").to route_to("photos#new", :destination_id => "1", :post_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/destinations/1/posts/1/photos/1").to route_to("photos#show", :destination_id => "1", :post_id => "1", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/destinations/1/posts/1/photos/1/edit").to route_to("photos#edit", :destination_id => "1", :post_id => "1", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/destinations/1/posts/1/photos").to route_to("photos#create", :destination_id => "1", :post_id => "1")
    end

    it "routes to #update" do
      expect(:put => "/destinations/1/posts/1/photos/1").to route_to("photos#update", :destination_id => "1", :post_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/destinations/1/posts/1/photos/1").to route_to("photos#destroy", :destination_id => "1", :post_id => "1", :id => "1")
    end

  end
end
