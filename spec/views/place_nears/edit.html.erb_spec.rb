require 'rails_helper'

RSpec.describe "place_nears/edit", type: :view do
  before(:each) do
    @place_near = assign(:place_near, PlaceNear.create!(
      :kiosk => false,
      :disco => false,
      :beach => false,
      :national_park => false,
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders the edit place_near form" do
    render

    assert_select "form[action=?][method=?]", place_near_path(@place_near), "post" do

      assert_select "input#place_near_kiosk[name=?]", "place_near[kiosk]"

      assert_select "input#place_near_disco[name=?]", "place_near[disco]"

      assert_select "input#place_near_beach[name=?]", "place_near[beach]"

      assert_select "input#place_near_national_park[name=?]", "place_near[national_park]"

      assert_select "input#place_near_other[name=?]", "place_near[other]"

      assert_select "input#place_near_place_id[name=?]", "place_near[place_id]"
    end
  end
end
