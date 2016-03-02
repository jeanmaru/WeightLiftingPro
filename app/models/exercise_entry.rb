class ExerciseEntry < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :user
  
  validates :reps, :sets, presence: true
  
end
