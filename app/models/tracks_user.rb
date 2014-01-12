class TracksUser < ActiveRecord::Base
      # attr_accessible :track_id, :user_id, :as => [:default, :admin, :create]
      attr_accessible :track_id, :user_id
      # attr_accessible :tracks_user
      # attr_protected
      belongs_to :track
      belongs_to :user
      accepts_nested_attributes_for :track
      accepts_nested_attributes_for :user
end
