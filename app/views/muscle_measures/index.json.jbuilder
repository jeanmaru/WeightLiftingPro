json.array!(@muscle_measures) do |muscle_measure|
  json.extract! muscle_measure, :id, :upper_arm_left, :upper_arm_right, :forearm_right, :forearm_left, :thigh_left, :thigh_right, :calf_left, :calf_right, :waist, :shoulder, :chest, :references
  json.url muscle_measure_url(muscle_measure, format: :json)
end
