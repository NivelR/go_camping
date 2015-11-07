require 'rails_helper'

RSpec.describe "NearPlaces", type: :request do
  describe "GET /near_places" do
    it "works! (now write some real specs)" do
      get near_places_path
      expect(response).to have_http_status(200)
    end
  end
end
