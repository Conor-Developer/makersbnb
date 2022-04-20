class User < ActiveRecord::Base
  has_many: spaces
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true
end