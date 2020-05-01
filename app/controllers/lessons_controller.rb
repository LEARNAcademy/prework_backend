class LessonsController < ApplicationController

    # Method for all Lesson
    def index
        lessons = Lesson.all
         render json: lessons 
    end
    # Method for making a new lesson
    def create
        lesson = Lesson.create(lesson_params)
         render json: lesson
    end
    # Method to show just 1
    def show
    end
    # Strong params below 
    private
    def lesson_params
         params.require(:lesson).permit(:content, :question, :completed, :title)
    end
end
