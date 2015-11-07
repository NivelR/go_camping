require 'rails_helper'

RSpec.describe "place_services/index", type: :view do
  before(:each) do
    assign(:place_services, [
      PlaceService.create!(
        :dry_cleaning => false,
        :public_transport => "Public Transport",
        :other => "Other",
        :place => nil
      ),
      PlaceService.create!(
        :dry_cleaning => false,
        :public_transport => "Public Transport",
        :other => "Other",
        :place => nil
      )
    ])
  end

  it "renders a list of place_services" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Public Transport".to_s, :count => 2
    assert_select "tr>td", :text => "Other".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
