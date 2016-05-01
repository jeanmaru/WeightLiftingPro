class SampleExercise < ActiveRecord::Base
  has_many :exercises
  has_many :exercise_entries
end
