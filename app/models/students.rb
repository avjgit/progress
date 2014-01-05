class Students < ActiveRecord::Base
  attr_accessible :track_id, :user_id

  belongs_to :track_id, class_name: "Track"
  belongs_to :user_id, class_name: "User"
end
