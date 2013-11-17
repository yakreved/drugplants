json.array!(@method_of_uses) do |method_of_use|
  json.extract! method_of_use, :name, :description, :plant_id, :path_of_plant_id
  json.url method_of_use_url(method_of_use, format: :json)
end
