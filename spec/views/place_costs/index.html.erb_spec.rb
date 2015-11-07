require 'rails_helper'

RSpec.describe "place_costs/index", type: :view do
  before(:each) do
    assign(:place_costs, [
      PlaceCost.create!(
        :regard => "Regard",
        :price => "9.99",
        :place => nil
      ),
      PlaceCost.create!(
        :regard => "Regard",
        :price => "9.99",
        :place => nil
      )
    ])
  end

  it "renders a list of place_costs" do
    render
    assert_select "tr>td", :text => "Regard".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
