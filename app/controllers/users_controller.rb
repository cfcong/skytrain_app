class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if user.save
      session[:user_id] = @user.id
      redirect_to trainlines_path, notice: "Welcome #{@user.firstname} #{@user.lastname}"
    else
      render :new
  end

  protected

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname)
  end

end