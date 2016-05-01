class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :fname, :measure, :body_weight, :gender, :level, :dob, presence: true

  validates_date :dob, :between =>  [ 60.years.ago , 16.years.ago]
  
  has_many :exercises
  has_many :routines
  has_many :exercise_entries
  has_many :muscle_measurements
end
