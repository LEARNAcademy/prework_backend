class CodeModulesController < ApplicationController

    # Method for all CodeModules
    def index
       codeModules = CodeModule.all
        render json: codeModules 
    end
    # Method for making a new CodeModule
    def create
        codeModule = CodeModule.create(codeModule_params)
        if codeModule.valid?
            render json: codeModule
        else
            render json: codeModule.errors, status: :unprocessable_entity
        end
    end
    # Method to show just 1 
    def show
        codeModule = CodeModule.find(params[:id])
        render json: codeModule 
    end
    # Method to update a CodeModule
    def update
        codeModule = CodeModule.find(params[:id])
        codeModule.update(codeModule_params)
        if codeModule.valid?
            render json: codeModule
        else
            render json: codeModule.errors
        end
    end
    # Method to delete a CodeModule
    def destroy
        codeModule = CodeModule.find(params[:id])
        if codeModule.destroy
            render json: codeModule
        else
            render json: codeModule.errors
        end
    end
    # Strong params below
    private
    def codeModule_params
        params.require(:code_module).permit(:lesson, :progress, :completed, :user_id)
    end
    
end
