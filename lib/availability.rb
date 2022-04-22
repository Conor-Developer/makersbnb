class Availability < ActiveRecord::Base
  validates :date, presence: true
  validates :available?, presence: true
  belongs_to :property
end
