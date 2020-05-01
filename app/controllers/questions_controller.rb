class QuestionsController < ApplicationController
    
    # Method for all Questions
    def index
        questions = Question.all
         render json: questions 
    end
    # Method for making a new Question
    def create
        question = Question.create(question_params)
         render json: question
    end
    # Method for show just 1 Question
    def show
    end
    # Strong params below 
    private
    def question_params
         params.require(:question).permit(:content, :answer, :correct, :completed)
    end
end
