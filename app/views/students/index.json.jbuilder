json.array!(@students) do |student|
  json.extract! student, :id, :name, :gender, :nation, :birthday, :politcs, :diplomano, :college, :classname, :major, :studentno, :address, :img
  json.url student_url(student, format: :json)
end
