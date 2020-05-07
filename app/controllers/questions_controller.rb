class QuestionsController < ApplicationController
    
    # Method for all Questions
    def index
        # Making sure only signed in users can access
        # if user_signed_in?
            questions = Question.all
            render json: questions 
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method for making a new Question
    def create
        # Making sure only signed in users can access
        # if user_signed_in?
            question = Question.create(question_params)
            if question.valid?
                render json: question
            else
                render json: question.errors, status: :unprocessable_entity
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method for show just 1 Question
    def show
        # Making sure only signed in users can access
        # if user_signed_in?
            question = Question.find(params[:id])
            render json: question
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to update a Question
    def update
        # Making sure only signed in users can access
        # if user_signed_in?
            question = Question.find(params[:id])
            question.update(question_params)
            if question.valid?
                render json: question
            else
                render json: question.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Method to delete a Question
    def destroy
        # Making sure only signed in users can access
        # if user_signed_in?
            question = Question.find(params[:id])
            if question.destroy
                render json: question
            else
                render json: question.errors
            end
        # else
        #     render status: 403, plain: 'Please Sign In to Access'
        # end
    end
    # Strong params below 
    private
    def question_params
         params.require(:question).permit(:content, :answer, :correct, :completed, :lesson_id, :code_module_id, :multiple_choice, :img_src, :title)
    end
end
