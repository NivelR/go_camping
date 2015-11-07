json.array!(@place_facilities) do |place_facility|
  json.extract! place_facility, :id, :private_toilet, :private_shared_toilet, :hot_water, :fridge, :kitchen, :microwave, :parking, :boat_ramp, :barbecue_area, :grill_shed, :campfire_place, :swimming_pool, :sound_system, :other, :place_id
  json.url place_facility_url(place_facility, format: :json)
end
