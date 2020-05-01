class ResourcesController < ApplicationController
    # Method for all Resources
    def index
        resources = Resource.all
        render json: resources
    end
    # Method for making a new Resource
    def create
        resource = Resource.create(resource_params)
        render json: resource
    end
    # Method to show just 1
    def show
    end
    # Strong params below
    private
    def resource_params
        params.require(:resource).permit(:name, :link)
    end
end
