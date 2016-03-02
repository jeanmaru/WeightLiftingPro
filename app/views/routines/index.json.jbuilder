json.array!(@routines) do |routine|
  json.extract! routine, :id
  json.url routine_url(routine, format: :json)
end
