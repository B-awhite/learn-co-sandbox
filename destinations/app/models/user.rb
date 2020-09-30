class User < ActiveRecord::Base 
  has_many :destinations
  has_secure_password
  validates :username, :password, presence: true 
  validates :username, uniquness: true 
end 