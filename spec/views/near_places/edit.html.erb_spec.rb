require 'rails_helper'

RSpec.describe "near_places/edit", type: :view do
  before(:each) do
    @near_place = assign(:near_place, NearPlace.create!(
      :kiosk => false,
      :disco => false,
      :beach => false,
      :national_park => false,
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders the edit near_place form" do
    render

    assert_select "form[action=?][method=?]", near_place_path(@near_place), "post" do

      assert_select "input#near_place_kiosk[name=?]", "near_place[kiosk]"

      assert_select "input#near_place_disco[name=?]", "near_place[disco]"

      assert_select "input#near_place_beach[name=?]", "near_place[beach]"

      assert_select "input#near_place_national_park[name=?]", "near_place[national_park]"

      assert_select "input#near_place_other[name=?]", "near_place[other]"

      assert_select "input#near_place_place_id[name=?]", "near_place[place_id]"
    end
  end
end
