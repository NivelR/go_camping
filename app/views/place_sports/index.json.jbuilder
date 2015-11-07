json.array!(@place_sports) do |place_sport|
  json.extract! place_sport, :id, :ping_pong_table, :canoe, :soccer_field, :platform_tennis_court, :volleyball_court, :other, :place_id
  json.url place_sport_url(place_sport, format: :json)
end
