json.array!(@replyposts) do |replypost|
  json.extract! replypost, :id, :content, :request_id, replyuid
  json.url replypost_url(replypost, format: :json)
end
