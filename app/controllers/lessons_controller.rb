class LessonsController < ApplicationController

    # Method for all Lesson
    def index
        # Making sure only signed in users can access
        # if user_signed_in?
            lessons = Lesson.all
            render json: lessons 
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method for making a new Lesson
    def create
        # Making sure only signed in users can access
        # if user_signed_in?
            lesson = Lesson.create(lesson_params)
            if lesson.valid?
                render json: lesson
            else
                render json: lesson.errors, status: :unprocessable_entity
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to show just 1 Lesson
    def show
        # Making sure only signed in users can access
        # if user_signed_in?
            lesson = Lesson.find(params[:id])
            render json: lesson
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end 
    end
    # Method to update a Lesson
    def update
        # Making sure only signed in users can access
        # if user_signed_in?
            lesson = Lesson.find(params[:id])
            lesson.update(lesson_params)
            if lesson.valid?
                render json: lesson
            else
                render json: lesson.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to delete a Lesson
    def destroy
        # Making sure only signed in users can access
        # if user_signed_in?
            lesson = Lesson.find(params[:id])
            if lesson.destroy
                render json: lesson
            else
                render json: leson.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Strong params below 
    private
    def lesson_params
         params.require(:lesson).permit(:content, :completed, :title, :code_module_id, :img_src)
    end
end