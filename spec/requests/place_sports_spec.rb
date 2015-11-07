require 'rails_helper'

RSpec.describe "PlaceSports", type: :request do
  describe "GET /place_sports" do
    it "works! (now write some real specs)" do
      get place_sports_path
      expect(response).to have_http_status(200)
    end
  end
end
