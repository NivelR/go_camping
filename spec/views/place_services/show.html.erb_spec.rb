require 'rails_helper'

RSpec.describe "place_services/show", type: :view do
  before(:each) do
    @place_service = assign(:place_service, PlaceService.create!(
      :dry_cleaning => false,
      :public_transport => "Public Transport",
      :other => "Other",
      :place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Public Transport/)
    expect(rendered).to match(/Other/)
    expect(rendered).to match(//)
  end
end
