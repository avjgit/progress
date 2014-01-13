class Submission < ActiveRecord::Base
  attr_accessible :grade, :step_id, :user_id
  belongs_to :step
  belongs_to :user
end
