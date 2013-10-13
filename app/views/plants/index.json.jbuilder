json.array!(@plants) do |plant|
  json.extract! plant, :name, :description, :family_id, :region_id
  json.url plant_url(plant, format: :json)
end
