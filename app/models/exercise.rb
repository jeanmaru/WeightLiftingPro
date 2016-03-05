class Exercise < ActiveRecord::Base
  belongs_to :sample_exercise
  belongs_to :user
  belongs_to :routine
  has_many :exercise_entries

  validates :sample_exercise_id, presence: true, :uniqueness => true
  
  end

