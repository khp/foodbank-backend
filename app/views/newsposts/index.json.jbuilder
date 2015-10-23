json.array!(@newsposts) do |newspost|
  json.extract! newspost, :id, :content, :date_posted, :poster
  json.url newspost_url(newspost, format: :json)
end
