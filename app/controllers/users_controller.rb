class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You havw registered succesfully"
      redirect_to root_url
    else
      flash.now[:danger] = "Please try again"
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
