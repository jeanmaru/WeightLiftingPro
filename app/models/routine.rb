class Routine < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  
  validates :name, presence: true
  
end
