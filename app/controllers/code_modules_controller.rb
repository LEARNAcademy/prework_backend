class CodeModulesController < ApplicationController
    # Method for all CodeModules
    def index
       codeModules = CodeModule.all
        render json: codeModules 
    end
    # Method for making a new CodeModule
    def create
        codeModule = CodeModule.create(codeModule_params)
        render json: codeModule
    end
    # Method to show just 1 
    def show
    end
    # Strong params below
    private
    def codeModule_params
        params.require(:code_module).permit(:lesson, :progress, :completed)
    end
    
end
