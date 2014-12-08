json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :arrived_on, :left_on, :lng, :lat
  json.url destination_url(destination, format: :json)
end
