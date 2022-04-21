class Property < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user
  validates :description, presence: true
end
