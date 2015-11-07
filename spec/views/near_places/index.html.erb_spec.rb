require 'rails_helper'

RSpec.describe "near_places/index", type: :view do
  before(:each) do
    assign(:near_places, [
      NearPlace.create!(
        :kiosk => false,
        :disco => false,
        :beach => false,
        :national_park => false,
        :other => "Other",
        :place => nil
      ),
      NearPlace.create!(
        :kiosk => false,
        :disco => false,
        :beach => false,
        :national_park => false,
        :other => "Other",
        :place => nil
      )
    ])
  end

  it "renders a list of near_places" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
