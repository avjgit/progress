class Registration < ActiveRecord::Base
    attr_accessible :track_id, :user_id
    # belongs_to :track, :inverse_of => :students
    # belongs_to :user, :inverse_of => :courses
  # accepts_nested_attributes_for :user
  # accepts_nested_attributes_for :track
    belongs_to :track
    belongs_to :user

end
