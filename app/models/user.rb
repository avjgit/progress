class User < ActiveRecord::Base
  before_save { self.email = email.downcase   }
  before_create :create_remember_token

  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :email, :name
  validates_length_of :name, :maximum => 50
  validates_uniqueness_of :email, :case_sensitive => false
  has_secure_password
  validates_length_of :password, :minimum => 5
  
  # has track as author!
  has_many :tracks 

  # has_many :students, foreign_key: "user_id", dependent: :destroy
  
  # has_many :courses, through: :students, source: :track
  # has_and_belongs_to_many :tracks
  
  # has track as student!
  has_many :courses, through: tracks_users, source: "Track"

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def learns?(track)
    tracks_students.where(track_id: track.id).first
  end

  def learn!(track)
    tracks_students.create!(track_id: track.id)
  end

  def unregister!(track)
    tracks_students.where(track_id: track.id).first.destroy!
  end

  private

    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
