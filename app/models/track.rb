class Track < ActiveRecord::Base
  attr_accessible :description, :title
  validates_presence_of :description, :title
  has_many :steps
  belongs_to :track
  has_many :students, foreign_key: "track_id", dependent: :destroy
  
  
end
