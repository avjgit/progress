class Step < ActiveRecord::Base
  belongs_to :track
  attr_accessible :deadline, :description, :grade, :title, :weight
  validates_presence_of :deadline, :title, :weight

  has_many :submissions
  has_many :submits, through: :submissions, source: :user

  def current_grade(user)
  	@t = Track.find(self.track_id)

  	if user.learns?(@t)
  		return submissions.where(step_id: self.id, user_id: user.id).first.grade
  	else
  		return '-'
  	end
  end

  def submitted(user)
  	@t = Track.find(self.track_id)

  	if user.learns?(@t)
  		if submissions.where(step_id: self.id, user_id: user.id).first.submitted
  			return 'submitted'
  		else
  			return 'not submitted'
  		end
  	else
  		return '-'
  	end
  end  
end
