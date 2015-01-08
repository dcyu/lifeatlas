json.array!(@aspirations) do |aspiration|
  json.extract! aspiration, :id, :description
  json.url aspiration_url(aspiration, format: :json)
end
