json.array!(@photos) do |photo|
  json.extract! photo, :id, :picture, :post_id, :description
  json.url photo_url(photo, format: :json)
end
