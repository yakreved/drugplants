json.array!(@contraindications) do |contraindication|
  json.extract! contraindication, :name
  json.url contraindication_url(contraindication, format: :json)
end
