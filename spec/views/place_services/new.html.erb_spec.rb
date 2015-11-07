require 'rails_helper'

RSpec.describe "place_services/new", type: :view do
  before(:each) do
    assign(:place_service, PlaceService.new(
      :dry_cleaning => false,
      :public_transport => "MyString",
      :other => "MyString",
      :place => nil
    ))
  end

  it "renders new place_service form" do
    render

    assert_select "form[action=?][method=?]", place_services_path, "post" do

      assert_select "input#place_service_dry_cleaning[name=?]", "place_service[dry_cleaning]"

      assert_select "input#place_service_public_transport[name=?]", "place_service[public_transport]"

      assert_select "input#place_service_other[name=?]", "place_service[other]"

      assert_select "input#place_service_place_id[name=?]", "place_service[place_id]"
    end
  end
end
