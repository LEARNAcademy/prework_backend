class Question < ApplicationRecord
    #Relational database declarations. 
    belongs_to :lesson
    belongs_to :code_module

    #Presence validations
    validates :content, :answer, :correct, :completed, :resources, :lesson_id, presence: true 
end
