require 'rails_helper'

RSpec.describe "place_sports/index", type: :view do
  before(:each) do
    assign(:place_sports, [
      PlaceSport.create!(
        :ping_pong_table => false,
        :canoe => false,
        :soccer_field => false,
        :platform_tennis_court => false,
        :volleyball_court => false,
        :other => "Other",
        :place => nil
      ),
      PlaceSport.create!(
        :ping_pong_table => false,
        :canoe => false,
        :soccer_field => false,
        :platform_tennis_court => false,
        :volleyball_court => false,
        :other => "Other",
        :place => nil
      )
    ])
  end

  it "renders a list of place_sports" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
