require 'rails_helper'

RSpec.describe "place_facilities/index", type: :view do
  before(:each) do
    assign(:place_facilities, [
      PlaceFacility.create!(
        :private_toilet => false,
        :shared_toilet => false,
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
      ),
      PlaceFacility.create!(
        :private_toilet => false,
        :shared_toilet => false,
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
      )
    ])
  end

  it "renders a list of place_facilities" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
