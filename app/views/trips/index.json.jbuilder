json.array!(@trips) do |trip|
  json.extract! trip, :id, :started_on, :left_on, :destination_id
  json.url trip_url(trip, format: :json)
end
