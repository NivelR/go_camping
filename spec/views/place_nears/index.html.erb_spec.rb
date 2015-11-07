require 'rails_helper'

RSpec.describe "place_nears/index", type: :view do
  before(:each) do
    assign(:place_nears, [
      PlaceNear.create!(
        :kiosk => false,
        :disco => false,
        :beach => false,
        :national_park => false,
        :other => "Other",
        :place => nil
      ),
      PlaceNear.create!(
        :kiosk => false,
        :disco => false,
        :beach => false,
        :national_park => false,
        :other => "Other",
        :place => nil
      )
    ])
  end

  it "renders a list of place_nears" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
