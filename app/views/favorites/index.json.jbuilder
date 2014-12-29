json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :title, :answer
  json.url favorite_url(favorite, format: :json)
end
