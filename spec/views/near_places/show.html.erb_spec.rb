require 'rails_helper'

RSpec.describe "near_places/show", type: :view do
  before(:each) do
    @near_place = assign(:near_place, NearPlace.create!(
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
