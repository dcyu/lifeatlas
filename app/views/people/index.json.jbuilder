json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :facebook_link, :linkedin_link
  json.url person_url(person, format: :json)
end
