class User < ActiveRecord::Base
  validates :email, presence: true
  has_secure_password
  validates :password, presence: true
end