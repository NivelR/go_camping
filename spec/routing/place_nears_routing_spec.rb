require "rails_helper"

RSpec.describe PlaceNearsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/place_nears").to route_to("place_nears#index")
    end

    it "routes to #new" do
      expect(:get => "/place_nears/new").to route_to("place_nears#new")
    end

    it "routes to #show" do
      expect(:get => "/place_nears/1").to route_to("place_nears#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/place_nears/1/edit").to route_to("place_nears#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/place_nears").to route_to("place_nears#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/place_nears/1").to route_to("place_nears#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/place_nears/1").to route_to("place_nears#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/place_nears/1").to route_to("place_nears#destroy", :id => "1")
    end

  end
end
