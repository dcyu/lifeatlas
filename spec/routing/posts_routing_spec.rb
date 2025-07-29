require "rails_helper"

RSpec.describe PostsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/destinations/1/posts").to route_to("posts#index", :destination_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/destinations/1/posts/new").to route_to("posts#new", :destination_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/destinations/1/posts/1").to route_to("posts#show", :destination_id => "1", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/destinations/1/posts/1/edit").to route_to("posts#edit", :destination_id => "1", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/destinations/1/posts").to route_to("posts#create", :destination_id => "1")
    end

    it "routes to #update" do
      expect(:put => "/destinations/1/posts/1").to route_to("posts#update", :destination_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/destinations/1/posts/1").to route_to("posts#destroy", :destination_id => "1", :id => "1")
    end

  end
end
