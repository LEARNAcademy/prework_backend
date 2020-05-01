class CodeModulesController < ApplicationController

    def index
       codeModules = CodeModule.all
        render json: codeModules 
    end

    def create
        codeModule = CodeModule.create(codeModule_params)
        render json: codeModule
    end

    def show
    end
    
    private
    def codeModule_params
        params.require(:code_module).permit(:lesson, :progress, :completed)
    end
    
end
