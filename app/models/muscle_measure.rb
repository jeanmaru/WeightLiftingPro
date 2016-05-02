class MuscleMeasure < ActiveRecord::Base
  belongs_to :user

  validates :unit, :name, :measurement, presence: true
  validates_presence_of :user
end
