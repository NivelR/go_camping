require 'rails_helper'

RSpec.describe "PlaceCosts", type: :request do
  describe "GET /place_costs" do
    it "works! (now write some real specs)" do
      get place_costs_path
      expect(response).to have_http_status(200)
    end
  end
end
