json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :location, :cost, :date
  json.url activity_url(activity, format: :json)
end
