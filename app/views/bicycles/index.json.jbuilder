json.array!(@bicycles) do |bicycle|
  json.extract! bicycle, :id, :name, :model, :year
  json.url bicycle_url(bicycle, format: :json)
end
