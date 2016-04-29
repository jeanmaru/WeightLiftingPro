class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :fname, :measure, :body_weight, :gender, :level, presence: true

  has_many :exercises
  has_many :routines
  has_many :exercise_entries
  has_many :muscle_measurements
end
