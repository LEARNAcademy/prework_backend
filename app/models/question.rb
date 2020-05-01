class Question < ApplicationRecord
    #Relational database declarations. 
    belongs_to :lesson
    belongs_to :code_module
    has_many :resources

    #Presence validations
    validates :content, :answer, :correct, :completed, :lesson_id, :code_module_id, presence: true 

    #Integer validation
    validates :lesson_id, numericality: true
    validates :code_module_id, numericality: true

    #Length of validations
    validates :content, length: {minimum: 3} 
    validates :answer, length: {minimum: 3} 
end
