class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password
  
  has_secure_password
end