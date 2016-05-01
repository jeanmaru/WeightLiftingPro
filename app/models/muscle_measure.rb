class MuscleMeasure < ActiveRecord::Base
  belongs_to :user

  validates :unit, presence: true

end
