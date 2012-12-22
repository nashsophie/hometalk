class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password
  
  has_secure_password
  validates :username, uniqueness:true
  
  has_many :posts
  has_many :votes
  has_many :comments
end 