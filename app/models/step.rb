class Step < ActiveRecord::Base
  belongs_to :track
  attr_accessible :deadline, :description, :grade, :title, :weight
  validates_presence_of :deadline, :title, :weight

  has_many :submissions
  has_many :submits, through: :submissions, source: :user
end
