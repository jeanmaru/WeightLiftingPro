class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :fname, :dob, :measure, :body_weight, presence: true

  has_many :exercises
  has_many :routines
  has_many :exercise_entries
end
