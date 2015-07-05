require "rails_helper"

RSpec.describe BlockListsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/block_lists").to route_to("block_lists#index")
    end

    it "routes to #new" do
      expect(:get => "/block_lists/new").to route_to("block_lists#new")
    end

    it "routes to #show" do
      expect(:get => "/block_lists/1").to route_to("block_lists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/block_lists/1/edit").to route_to("block_lists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/block_lists").to route_to("block_lists#create")
    end

    it "routes to #update" do
      expect(:put => "/block_lists/1").to route_to("block_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/block_lists/1").to route_to("block_lists#destroy", :id => "1")
    end

  end
end
