json.array!(@place_services) do |place_service|
  json.extract! place_service, :id, :dry_cleaning, :public_transport, :other, :place_id
  json.url place_service_url(place_service, format: :json)
end
