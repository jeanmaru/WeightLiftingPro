class SampleExercise < ActiveRecord::Base
  has_many :exercises
  
  #Below is not implemented and unnecessary
  has_many :exercise_entries
end
