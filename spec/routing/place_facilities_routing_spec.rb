require "rails_helper"

RSpec.describe PlaceFacilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/place_facilities").to route_to("place_facilities#index")
    end

    it "routes to #new" do
      expect(:get => "/place_facilities/new").to route_to("place_facilities#new")
    end

    it "routes to #show" do
      expect(:get => "/place_facilities/1").to route_to("place_facilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/place_facilities/1/edit").to route_to("place_facilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/place_facilities").to route_to("place_facilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/place_facilities/1").to route_to("place_facilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/place_facilities/1").to route_to("place_facilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/place_facilities/1").to route_to("place_facilities#destroy", :id => "1")
    end

  end
end
