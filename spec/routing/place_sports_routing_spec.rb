require "rails_helper"

RSpec.describe PlaceSportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/place_sports").to route_to("place_sports#index")
    end

    it "routes to #new" do
      expect(:get => "/place_sports/new").to route_to("place_sports#new")
    end

    it "routes to #show" do
      expect(:get => "/place_sports/1").to route_to("place_sports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/place_sports/1/edit").to route_to("place_sports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/place_sports").to route_to("place_sports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/place_sports/1").to route_to("place_sports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/place_sports/1").to route_to("place_sports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/place_sports/1").to route_to("place_sports#destroy", :id => "1")
    end

  end
end
