class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin!
  
  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
