class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.autheticate(params[:password])
      sessions[:user_id] = user.user_id
      redirect_to trainlines_path, notice: "Welcome back, #{user.firstname}"
    else
      flash.now[:alert] = "Log in failed. Please try again"
      render :new
    end 
  end

  def destroy
    sessions[:user_id] = nil
    redirect_to trainlines_path, notice "See you again."
  end

end