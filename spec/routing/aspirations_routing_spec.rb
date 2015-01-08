require "rails_helper"

RSpec.describe AspirationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aspirations").to route_to("aspirations#index")
    end

    it "routes to #new" do
      expect(:get => "/aspirations/new").to route_to("aspirations#new")
    end

    it "routes to #show" do
      expect(:get => "/aspirations/1").to route_to("aspirations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aspirations/1/edit").to route_to("aspirations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aspirations").to route_to("aspirations#create")
    end

    it "routes to #update" do
      expect(:put => "/aspirations/1").to route_to("aspirations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aspirations/1").to route_to("aspirations#destroy", :id => "1")
    end

  end
end
