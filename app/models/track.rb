class Track < ActiveRecord::Base
  attr_accessible :description, :title
  validates_presence_of :description, :title
  has_many :steps
  #has_many :students, foreign_key: "track_id", dependent: :destroy
  # has_and_belongs_to_many :users

  # as coach!
  belongs_to :user
  # as students!
  has_many :tracks_users
  # has_many :students, :through => :tracks_users, :source => "User"
  has_many :students, through: :tracks_users, source: :user
  
end
