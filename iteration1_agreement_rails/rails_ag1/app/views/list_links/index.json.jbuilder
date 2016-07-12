json.array!(@list_links) do |list_link|
  json.extract! list_link, :id, :name, :title, :author
  json.url list_link_url(list_link, format: :json)
end
