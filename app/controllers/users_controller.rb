class UsersController < ApplicationController

    def index
    end

    def show
    end
    
    def edit
        user = current_user
    end
#Allow user to update its last_q and last_l columns
    def update
        user = User.find(params[:id])
        user.update(user_params)
    if user.valid?
        render json: user
    else
        render json: user.errors, status: :unprocessable_entity
    end
    end

    #Shh, secret. 
    private
    def user_params
        params.require(:user).permit(:id, :last_q, :last_l)
    end

end
