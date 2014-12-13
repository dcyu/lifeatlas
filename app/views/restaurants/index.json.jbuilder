json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :destination_id
  json.url restaurant_url(restaurant, format: :json)
end
