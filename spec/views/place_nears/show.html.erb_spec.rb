require 'rails_helper'

RSpec.describe "place_nears/show", type: :view do
  before(:each) do
    @place_near = assign(:place_near, PlaceNear.create!(
      :kiosk => false,
      :disco => false,
      :beach => false,
      :national_park => false,
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
    expect(rendered).to match(/Other/)
    expect(rendered).to match(//)
  end
end
