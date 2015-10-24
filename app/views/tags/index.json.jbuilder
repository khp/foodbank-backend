json.array!(@hours) do |hour|
  json.extract! hour, :start, :end, :crowd
  json.url hour_url(hour, format: :json)
end
