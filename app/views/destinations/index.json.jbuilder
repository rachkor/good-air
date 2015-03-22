json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :description, :city, :state, :country
  json.url destination_url(destination, format: :json)
end
