json.array!(@puts) do |put|
  json.extract! put, :id, :name, :content
  json.url put_url(put, format: :json)
end
