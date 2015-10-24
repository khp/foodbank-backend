json.array!(@newsposts) do |newspost|
  json.extract! newspost, :id, :title, :content, :date_posted, :poster
  json.url newspost_url(newspost, format: :json)
end
