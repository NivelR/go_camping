require 'rails_helper'

RSpec.describe "near_places/new", type: :view do
  before(:each) do
    assign(:near_place, NearPlace.new(
      :kiosk => false,
      :disco => false,
      :beach => false,
      :national_park => false,
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders new near_place form" do
    render

    assert_select "form[action=?][method=?]", near_places_path, "post" do

      assert_select "input#near_place_kiosk[name=?]", "near_place[kiosk]"

      assert_select "input#near_place_disco[name=?]", "near_place[disco]"

      assert_select "input#near_place_beach[name=?]", "near_place[beach]"

      assert_select "input#near_place_national_park[name=?]", "near_place[national_park]"

      assert_select "input#near_place_other[name=?]", "near_place[other]"

      assert_select "input#near_place_place_id[name=?]", "near_place[place_id]"
    end
  end
end
