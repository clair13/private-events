class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:name])
    if @user && @user.authenticate(params[:session][:email])
      log_in @user
      flash[:success] = "Successfully logged in"
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid email"
      render :new
    end
  end

  def destroy
    logout if logged_in?
    redirect_to root_path
  end
end
