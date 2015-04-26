json.array!(@stops) do |stop|
  json.extract! stop, :id, :aspiration_id, :destination_id
  json.url stop_url(stop, format: :json)
end
