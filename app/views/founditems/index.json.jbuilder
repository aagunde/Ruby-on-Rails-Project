json.array!(@founditems) do |founditem|
  json.extract! founditem, :id, :name, :color, :brand, :place_where_found
  json.url founditem_url(founditem, format: :json)
end
