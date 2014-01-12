class Students < ActiveRecord::Base
  attr_accessible :track_id, :user_id

  belongs_to :track, class_name: "Track"
  belongs_to :user, class_name: "User"

  validates :track_id, presence: true
  validates :user_id, presence: true
end
