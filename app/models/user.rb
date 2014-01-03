class User < ActiveRecord::Base
  before_save { self.email = email.downcase   }
  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :email, :name
  validates_length_of :name, :maximum => 50
  validates_uniqueness_of :email, :case_sensitive => false
  has_secure_password
  validates_length_of :password, :minimum => 5
end
