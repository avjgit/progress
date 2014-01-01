class Track < ActiveRecord::Base
  attr_accessible :description, :title
  validates_presence_of :description, :title
  has_many :steps
end
