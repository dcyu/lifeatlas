json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :person_id, :day, :location
  json.url meeting_url(meeting, format: :json)
end
