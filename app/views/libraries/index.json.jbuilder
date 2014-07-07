json.array!(@libraries) do |library|
  json.extract! library, :id, :url, :name
  json.url library_url(library, format: :json)
end
