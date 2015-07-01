json.array!(@archives) do |archive|
  json.extract! archive, :id, :archiveno, :jiyaono, :issend, :sendway, :isduyan, :firstsend, :secondsend, :hmaterial, :umaterial, :mmaterial, :dmaterial, :pmaterial, :omaterial, :zmaterial, :remark
  json.url archive_url(archive, format: :json)
end
