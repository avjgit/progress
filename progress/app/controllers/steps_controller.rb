class StepsController < ApplicationController
  def create
    @track = Track.find(params[:track_id])
    @step = @track.steps.create!(params[:step])
    redirect_to @track
  end
end
