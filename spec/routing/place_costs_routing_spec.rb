require "rails_helper"

RSpec.describe PlaceCostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/place_costs").to route_to("place_costs#index")
    end

    it "routes to #new" do
      expect(:get => "/place_costs/new").to route_to("place_costs#new")
    end

    it "routes to #show" do
      expect(:get => "/place_costs/1").to route_to("place_costs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/place_costs/1/edit").to route_to("place_costs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/place_costs").to route_to("place_costs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/place_costs/1").to route_to("place_costs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/place_costs/1").to route_to("place_costs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/place_costs/1").to route_to("place_costs#destroy", :id => "1")
    end

  end
end
