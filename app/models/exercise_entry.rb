class ExerciseEntry < ActiveRecord::Base
  acts_as_reportable

  belongs_to :exercise
  belongs_to :user
  
  validates :reps, :sets, :measure, presence: true
  
end
