require 'rails_helper'

RSpec.describe "place_sports/new", type: :view do
  before(:each) do
    assign(:place_sport, PlaceSport.new(
      :ping_pong_table => false,
      :canoe => false,
      :soccer_field => false,
      :platform_tennis_court => false,
      :volleyball_court => false,
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders new place_sport form" do
    render

    assert_select "form[action=?][method=?]", place_sports_path, "post" do

      assert_select "input#place_sport_ping_pong_table[name=?]", "place_sport[ping_pong_table]"

      assert_select "input#place_sport_canoe[name=?]", "place_sport[canoe]"

      assert_select "input#place_sport_soccer_field[name=?]", "place_sport[soccer_field]"

      assert_select "input#place_sport_platform_tennis_court[name=?]", "place_sport[platform_tennis_court]"

      assert_select "input#place_sport_volleyball_court[name=?]", "place_sport[volleyball_court]"

      assert_select "input#place_sport_other[name=?]", "place_sport[other]"

      assert_select "input#place_sport_place_id[name=?]", "place_sport[place_id]"
    end
  end
end
