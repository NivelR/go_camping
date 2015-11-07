require 'rails_helper'

RSpec.describe "place_costs/show", type: :view do
  before(:each) do
    @place_cost = assign(:place_cost, PlaceCost.create!(
      :regard => "Regard",
      :price => "9.99",
      :place => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Regard/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
