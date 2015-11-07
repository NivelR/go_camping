require 'rails_helper'

RSpec.describe "place_costs/new", type: :view do
  before(:each) do
    assign(:place_cost, PlaceCost.new(
      :regard => "MyString",
      :price => "9.99",
      :place => nil
    ))
  end

  it "renders new place_cost form" do
    render

    assert_select "form[action=?][method=?]", place_costs_path, "post" do

      assert_select "input#place_cost_regard[name=?]", "place_cost[regard]"

      assert_select "input#place_cost_price[name=?]", "place_cost[price]"

      assert_select "input#place_cost_place_id[name=?]", "place_cost[place_id]"
    end
  end
end
