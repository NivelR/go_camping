FactoryGirl.define do
  factory :place_facility, :class => 'PlaceFacilitie' do
    private_toilet false
private_shared_toilet false
hot_water false
fridge false
kitchen false
microwave false
parking false
boat_ramp false
barbecue_area false
grill_shed false
campfire_place false
swimming_pool false
sound_system false
other "MyString"
place nil
  end

end
