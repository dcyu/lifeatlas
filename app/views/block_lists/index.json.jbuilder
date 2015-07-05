json.array!(@block_lists) do |block_list|
  json.extract! block_list, :id, :title, :description
  json.url block_list_url(block_list, format: :json)
end
