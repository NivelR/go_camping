require 'rails_helper'

RSpec.describe "place_sports/show", type: :view do
  before(:each) do
    @place_sport = assign(:place_sport, PlaceSport.create!(
      :ping_pong_table => false,
      :canoe => false,
      :soccer_field => false,
      :platform_tennis_court => false,
      :volleyball_court => false,
      :other => "Other",
      :place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Other/)
    expect(rendered).to match(//)
  end
end
