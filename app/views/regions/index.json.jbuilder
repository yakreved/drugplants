json.array!(@regions) do |region|
  json.extract! region, :name, :country_id
  json.url region_url(region, format: :json)
end
