class Property < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user
  validates :description, presence: true
  has_many :availabilities
end
