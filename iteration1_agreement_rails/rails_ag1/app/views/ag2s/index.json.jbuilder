json.array!(@ag2s) do |ag2|
  json.extract! ag2, :id, :name, :title, :author
  json.url ag2_url(ag2, format: :json)
end
