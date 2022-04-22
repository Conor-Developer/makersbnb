class Availability < ActiveRecord::Base
  validates :date, presence: true
  belongs_to :property
end
