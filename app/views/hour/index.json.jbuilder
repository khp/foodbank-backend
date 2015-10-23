json.array!(@locations) do |location|
  json.extract! location, :id, :name, :address, :postal_code, :city, :phone_number
  json.url location_url(location, format: :json)
end
