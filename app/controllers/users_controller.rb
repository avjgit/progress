class UsersController < ApplicationController

  # @curruser = User.find(current_user.id)

  # before_action :signed_in_user, only: [:edit, :update]
  # before_action :correct_user,   only: [:edit, :update]

  def new
  	@user = User.new
  end
  def show
  	@user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])    # Not the final implementation!
    # @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Progress!"
      redirect_to @user
    else
      render 'new'
    end
  end  

	private

	# def user_params
	#   params.require(:user).permit(:name, :email, :password,
	#                                :password_confirmation)
	# end
    # Before filters

    # def signed_in_user
    #   redirect_to signin_url, notice: "Please sign in." unless signed_in?
    # end

    # def correct_user
    #   @user = User.find(params[:id])
    #   redirect_to(root_url) unless current_user?(@user)
    # end
end
