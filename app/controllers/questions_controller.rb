class QuestionsController < ApplicationController

    def index
        questions = Question.all
         render json: questions 
     end
 
     def create
         question = Question.create(question_params)
         render json: question
     end
 
     def show
     end
     
     private
     def question_params
         params.require(:question).permit(:content, :answer, :correct, :completed)
     end
end
