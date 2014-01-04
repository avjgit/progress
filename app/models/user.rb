class User < ActiveRecord::Base
  before_save { self.email = email.downcase   }
  before_create :create_remember_token

  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :email, :name
  validates_length_of :name, :maximum => 50
  validates_uniqueness_of :email, :case_sensitive => false
  has_secure_password
  validates_length_of :password, :minimum => 5

    def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
