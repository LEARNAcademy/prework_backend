# class SessionsController < ApplicationController
    
#     def show
#         if current_user ? head(:ok) : head(:unauthorized)
#     end


#     def new
#         if user&.valid_password?(params[:password])
#             render json: user, status: :created
#         else 
#             head(:unauthorized)
#         end
#     end

#     def destroy

#     end
# end