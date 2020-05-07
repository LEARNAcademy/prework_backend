class TopicsController < ApplicationController

    # Method for all Topics
    def index
        # Making sure only signed in users can access
        # if user_signed_in?
            topics = Topic.all
            render json: topics
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method for making a new Topic
    def create
        # Making sure only signed in users can access
        # if user_signed_in?
            topic = Topic.create(topic_params)
            if topic.valid?
                render json: topic
            else
                render json: topic.errors, status: :unprocessable_entity
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to show just 1 Topic
    def show
        # Making sure only signed in users can access
        # if user_signed_in?
            topic = Topic.find(params[:id])
            render json: topic
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to update a Topic
    def update
        # Making sure only signed in users can access
        # if user_signed_in?
            topic = Topic.find(params[:id])
            topic.update(topic_params)
            if topic.valid?
                render json: topic
            else
                render json: topic.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to delete a Topic
    def destroy
        # Making sure only signed in users can access
        # if user_signed_in?
            topic = Topic.find(params[:id])
            if topic.destroy
                render json: topic
            else
                render json: topic.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Strong params below
    private
    def topic_params
        params.require(:topic).permit(:title)
    end
end
