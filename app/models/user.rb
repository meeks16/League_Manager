class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :password, :password_confirmation
  
#   has_secure_password
#   
#   validates_uniqueness_of :email
end
