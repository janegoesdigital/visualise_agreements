json.array!(@ag3s) do |ag3|
  json.extract! ag3, :id, :name, :title, :author
  json.url ag3_url(ag3, format: :json)
end
