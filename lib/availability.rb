class Availability < ActiveRecord::Base
  validates :date, presence: true
  validates :availability, presence: true
  validates :confirmation_pending?, presence: true
  belongs_to :property
end
