class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:current_user_id] = @user.id
      UserMailer.sign_up_email(@user).deliver_now
      redirect_to owners_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_confirmation, :password)
  end
end
