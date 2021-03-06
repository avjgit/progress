class Track < ActiveRecord::Base
  attr_accessible :description, :title, :registrations_attributes
  validates_presence_of :description, :title
  has_many :steps
  #has_many :students, foreign_key: "track_id", dependent: :destroy
  # has_and_belongs_to_many :users

    # has coach!
    belongs_to :user
    # has students!
    # has_many :tracks_users
    # has_many :students, through: :tracks_users, source: :user
    # accepts_nested_attributes_for :tracks_user
    has_many :registrations
    has_many :students, through: :registrations, source: :user
    accepts_nested_attributes_for :registrations
    accepts_nested_attributes_for :students
  
end
