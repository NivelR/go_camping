require 'rails_helper'

RSpec.describe "PlaceFacilities", type: :request do
  describe "GET /place_facilities" do
    it "works! (now write some real specs)" do
      get place_facilities_path
      expect(response).to have_http_status(200)
    end
  end
end
