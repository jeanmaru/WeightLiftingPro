class Exercise < ActiveRecord::Base
  belongs_to :sample_exercise
  belongs_to :user
  belongs_to :routine
  has_many :exercise_entries,  dependent: :destroy

  validates_presence_of :sample_exercise_id
  validates_uniqueness_of :sample_exercise_id, scope: [:user_id]
  
  end

