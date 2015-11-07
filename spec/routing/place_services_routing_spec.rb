require "rails_helper"

RSpec.describe PlaceServicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/place_services").to route_to("place_services#index")
    end

    it "routes to #new" do
      expect(:get => "/place_services/new").to route_to("place_services#new")
    end

    it "routes to #show" do
      expect(:get => "/place_services/1").to route_to("place_services#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/place_services/1/edit").to route_to("place_services#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/place_services").to route_to("place_services#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/place_services/1").to route_to("place_services#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/place_services/1").to route_to("place_services#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/place_services/1").to route_to("place_services#destroy", :id => "1")
    end

  end
end
