json.array!(@materials) do |material|
  json.extract! material, :id, :name, :cate, :remark
  json.url material_url(material, format: :json)
end
