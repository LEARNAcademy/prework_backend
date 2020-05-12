class SessionsController < ApplicationController
    
    def show
        if current_user ? head(:ok) : head(:unauthorized)
    end

    def create
        user = User.where(email: params[:email]).first
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else 
            head(:unauthorized)
        end
    end

    def new
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :created
        else 
            head(:unauthorized)
        end
    end

    def destroy

    end
end