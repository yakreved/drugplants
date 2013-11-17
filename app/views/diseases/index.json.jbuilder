json.array!(@diseases) do |disease|
  json.extract! disease, :name, :discription
  json.url disease_url(disease, format: :json)
end
