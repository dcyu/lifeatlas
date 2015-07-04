json.array!(@words) do |word|
  json.extract! word, :id, :english, :spanish
  json.url word_url(word, format: :json)
end
