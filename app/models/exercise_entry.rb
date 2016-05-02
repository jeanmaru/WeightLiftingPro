class ExerciseEntry < ActiveRecord::Base

  belongs_to :exercise
  belongs_to :user
  belongs_to :sample_exercise

  # validates_presence_of :sample_exercise_id

  validates :reps, :sets, presence: true
  validates_presence_of :measure, :if => :weight?
  
  
end
