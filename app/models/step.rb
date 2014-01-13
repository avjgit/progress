class Step < ActiveRecord::Base
  belongs_to :track
  attr_accessible :deadline, :description, :grade, :title, :weight
  validates_presence_of :deadline, :title, :weight

  has_many :submissions
  has_many :submits, through: :submissions, source: :user

  def current_grade(user)
  	return submissions.where(step_id: self.id, user_id: user.id).first.grade
  end
end
