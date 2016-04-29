class ExerciseEntry < ActiveRecord::Base
  acts_as_reportable

  belongs_to :exercise
  belongs_to :user
  belongs_to :sample_exercise

  validates :reps, :sets, presence: true
  validates_presence_of :measure, :if => :weight?
  
  
end
