json.array!(@exercise_entries) do |exercise_entry|
  json.extract! exercise_entry, :id, :reps, :sets, :weight, :notes, :exercise_id
  json.url exercise_entry_url(exercise_entry, format: :json)
end
