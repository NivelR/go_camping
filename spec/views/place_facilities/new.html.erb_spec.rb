require 'rails_helper'

RSpec.describe "place_facilities/new", type: :view do
  before(:each) do
    assign(:place_facilitie, PlaceFacilitie.new(
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
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders new place_facilitie form" do
    render

    assert_select "form[action=?][method=?]", place_facilities_path, "post" do

      assert_select "input#place_facilitie_private_toilet[name=?]", "place_facilitie[private_toilet]"

      assert_select "input#place_facilitie_private_shared_toilet[name=?]", "place_facilitie[private_shared_toilet]"

      assert_select "input#place_facilitie_hot_water[name=?]", "place_facilitie[hot_water]"

      assert_select "input#place_facilitie_fridge[name=?]", "place_facilitie[fridge]"

      assert_select "input#place_facilitie_kitchen[name=?]", "place_facilitie[kitchen]"

      assert_select "input#place_facilitie_microwave[name=?]", "place_facilitie[microwave]"

      assert_select "input#place_facilitie_parking[name=?]", "place_facilitie[parking]"

      assert_select "input#place_facilitie_boat_ramp[name=?]", "place_facilitie[boat_ramp]"

      assert_select "input#place_facilitie_barbecue_area[name=?]", "place_facilitie[barbecue_area]"

      assert_select "input#place_facilitie_grill_shed[name=?]", "place_facilitie[grill_shed]"

      assert_select "input#place_facilitie_campfire_place[name=?]", "place_facilitie[campfire_place]"

      assert_select "input#place_facilitie_swimming_pool[name=?]", "place_facilitie[swimming_pool]"

      assert_select "input#place_facilitie_sound_system[name=?]", "place_facilitie[sound_system]"

      assert_select "input#place_facilitie_other[name=?]", "place_facilitie[other]"

      assert_select "input#place_facilitie_place_id[name=?]", "place_facilitie[place_id]"
    end
  end
end
