class ResourcesController < ApplicationController
    
    # Method for all Resources
    def index
        # Making sure only signed in users can access
        if user_signed_in?
            resources = Resource.all
            render json: resources
        else
            render status: 403, plain: 'Please Sign In to Access'
        end
    end
    # Method for making a new Resource
    def create
        # Making sure only signed in users can access
        if user_signed_in?
            resource = Resource.create(resource_params)
            if resource.valid?
                render json: resource
            else
                render json: codeModule.errors, status: :unprocessable_entity
            end
        else
            render status: 403, plain: 'Please Sign In to Access'
        end
    end
    # Method to show just 1 Resource
    def show
        # Making sure only signed in users can access
        if user_signed_in?
            resource = Resource.find(params[:id])
            render json: resource
        else
            render status: 403, plain: 'Please Sign In to Access'
        end
    end
    # Method to update a Resource
    def update
        # Making sure only signed in users can access
        if user_signed_in?
            resource = Resource.find(params[:id])
            resource.update(resource_params)
            if resource.valid?
                render json: resource
            else
                render json: resource.errors
            end
        else
            render status: 403, plain: 'Please Sign In to Access'
        end
    end
    # Method to delete a Resource
    def destroy
        # Making sure only signed in users can access
        if user_signed_in?
            resource = Resource.find(params[:id])
            if resource.destroy
                render json: resource
            else
                render json: resource.errors
            end
        else
            render status: 403, plain: 'Please Sign In to Access'
        end
    end
    # Strong params below
    private
    def resource_params
        params.require(:resource).permit(:name, :link, :question_id)
    end
end
