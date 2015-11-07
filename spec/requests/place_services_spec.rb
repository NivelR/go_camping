require 'rails_helper'

RSpec.describe "PlaceServices", type: :request do
  describe "GET /place_services" do
    it "works! (now write some real specs)" do
      get place_services_path
      expect(response).to have_http_status(200)
    end
  end
end
