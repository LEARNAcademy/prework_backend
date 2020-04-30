class Question < ApplicationRecord
    #Relational database declarations. 
    belongs_to :lesson
    belongs_to :code_module
    has_many :resources

    #Presence validations
    validates :content, :answer, :correct, :completed, :resources, :lesson_id, presence: true 

    #Intger validation
    validates :lesson_id, numericality: true
end
