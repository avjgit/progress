class RegistrationController < ApplicationController
  before_action :signed_in_user

  def create
    # @track = Track.find(params[:student][:track_id])
    @track = Track.find(1)
    current_user.learn!(@track)
    redirect_to @track
  end

  # def destroy
  #   @track = TracksUser.find(params[:id]).track_id
  #   current_user.unregister!(@track)
  #   redirect_to @track
  # end
end