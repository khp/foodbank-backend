json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :name, :contact, :message, :category
  json.url feedback_url(feedback, format: :json)
end
