class LessonsController < ApplicationController

    def index
        lessons = Lesson.all
         render json: lessons 
     end
 
     def create
         lesson = Lesson.create(lesson_params)
         render json: lesson
     end
 
     def show
     end
     
     private
     def lesson_params
         params.require(:lesson).permit(:content, :question, :completed, :title)
     end
end
