# frozen_string_literal: true
class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!
  # Shows all Users
  def index
    users = User.all
    render json: users
  end
  # Shows one User  
  def show
        user = User.find(params[:id])
        render json: user
  end

  def destroy
  end

end
