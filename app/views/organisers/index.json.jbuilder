json.array!(@organisers) do |organiser|
  json.extract! organiser, :id, :name, :college, :event_title, :event_type
  json.url organiser_url(organiser, format: :json)
end
