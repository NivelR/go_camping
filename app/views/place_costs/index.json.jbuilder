json.array!(@place_costs) do |place_cost|
  json.extract! place_cost, :id, :regard, :price, :place_id
  json.url place_cost_url(place_cost, format: :json)
end
