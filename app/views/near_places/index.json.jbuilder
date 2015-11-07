json.array!(@near_places) do |near_place|
  json.extract! near_place, :id, :kiosk, :disco, :beach, :national_park, :other, :place_id
  json.url near_place_url(near_place, format: :json)
end
