json.array!(@path_of_plants) do |path_of_plant|
  json.extract! path_of_plant, :Name
  json.url path_of_plant_url(path_of_plant, format: :json)
end
