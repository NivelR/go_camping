json.array!(@place_nears) do |place_near|
  json.extract! place_near, :id, :kiosk, :disco, :beach, :national_park, :other, :place_id
  json.url place_near_url(place_near, format: :json)
end
