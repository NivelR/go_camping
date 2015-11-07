require 'rails_helper'

RSpec.describe "place_facilities/show", type: :view do
  before(:each) do
    @place_facilitie = assign(:place_facilitie, PlaceFacilitie.create!(
      :private_toilet => false,
      :private_shared_toilet => false,
      :hot_water => false,
      :fridge => false,
      :kitchen => false,
      :microwave => false,
      :parking => false,
      :boat_ramp => false,
      :barbecue_area => false,
      :grill_shed => false,
      :campfire_place => false,
      :swimming_pool => false,
      :sound_system => false,
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
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Other/)
    expect(rendered).to match(//)
  end
end
