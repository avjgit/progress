class Step < ActiveRecord::Base
  belongs_to :track
  attr_accessible :deadline, :description, :grade, :title, :weight
end
