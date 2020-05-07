class CodeModulesController < ApplicationController

    # Method for all CodeModules
    def index
        # Making sure only signed in users can access
        # if user_signed_in?
            codeModules = CodeModule.all
            render json: codeModules 
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method for making a new CodeModule
    def create
        # Making sure only signed in users can access
        # if user_signed_in?
            codeModule = CodeModule.create(codeModule_params)
            if codeModule.valid?
                render json: codeModule
            else
                render json: codeModule.errors, status: :unprocessable_entity
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to show just 1 CodeModule
    def show
        # Making sure only signed in users can access
        # if user_signed_in?
            codeModule = CodeModule.find(params[:id])
            render json: codeModule 
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to update a CodeModule
    def update
        # Making sure only signed in users can access
        # if user_signed_in?
            codeModule = CodeModule.find(params[:id])
            codeModule.update(codeModule_params)
            if codeModule.valid?
                render json: codeModule
            else
                render json: codeModule.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to delete a CodeModule
    def destroy
        # Making sure only signed in users can access
        # if user_signed_in?
            codeModule = CodeModule.find(params[:id])
            if codeModule.destroy
                render json: codeModule
            else
                render json: codeModule.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Strong params below
    private
    def codeModule_params
        params.require(:code_module).permit(:lesson, :progress, :completed, :user_id, :topic_id)
    end
    
end
