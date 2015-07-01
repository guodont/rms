json.array!(@classses) do |classs|
  json.extract! classs, :id, :name, :major_id
  json.url classs_url(classs, format: :json)
end
