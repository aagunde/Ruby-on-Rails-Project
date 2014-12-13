json.array!(@lostitems) do |lostitem|
  json.extract! lostitem, :id, :name, :color, :brand, :place_where_lost
  json.url lostitem_url(lostitem, format: :json)
end
