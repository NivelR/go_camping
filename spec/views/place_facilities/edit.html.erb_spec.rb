require 'rails_helper'

RSpec.describe "place_facilities/edit", type: :view do
  before(:each) do
    @place_facility = assign(:place_facility, PlaceFacility.create!(
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
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders the edit place_facility form" do
    render

    assert_select "form[action=?][method=?]", place_facility_path(@place_facility), "post" do

      assert_select "input#place_facility_private_toilet[name=?]", "place_facility[private_toilet]"

      assert_select "input#place_facility_shared_toilet[name=?]", "place_facility[shared_toilet]"

      assert_select "input#place_facility_hot_water[name=?]", "place_facility[hot_water]"

      assert_select "input#place_facility_fridge[name=?]", "place_facility[fridge]"

      assert_select "input#place_facility_kitchen[name=?]", "place_facility[kitchen]"

      assert_select "input#place_facility_microwave[name=?]", "place_facility[microwave]"

      assert_select "input#place_facility_parking[name=?]", "place_facility[parking]"

      assert_select "input#place_facility_boat_ramp[name=?]", "place_facility[boat_ramp]"

      assert_select "input#place_facility_barbecue_area[name=?]", "place_facility[barbecue_area]"

      assert_select "input#place_facility_grill_shed[name=?]", "place_facility[grill_shed]"

      assert_select "input#place_facility_campfire_place[name=?]", "place_facility[campfire_place]"

      assert_select "input#place_facility_swimming_pool[name=?]", "place_facility[swimming_pool]"

      assert_select "input#place_facility_sound_system[name=?]", "place_facility[sound_system]"

      assert_select "input#place_facility_other[name=?]", "place_facility[other]"

      assert_select "input#place_facility_place_id[name=?]", "place_facility[place_id]"
    end
  end
end
