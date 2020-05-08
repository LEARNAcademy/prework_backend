class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin!
  # Shows all Users for Admin
  def index
    users = User.all
    render json: users
  end
  # Shows one User for Admin
  def show
        user = User.find(params[:id])
        render json: user
  end
  # Creates one User for Admin
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end
  # Updates one User for Admin
  def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: user
        else
            render json: user.errors
        end
  end
  # Deletes one User for Admin
  def destroy
        user = User.find(params[:id])
        if user.destroy
            render json: user
        else
            render json: user.errors
        end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
