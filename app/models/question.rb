class Question < ApplicationRecord
    #Relational database declarations. 
    belongs_to :lesson
    belongs_to :code_module
    has_many :resources

    #Presence validations
    validates :multiple_choice, :completed, :lesson_id, :code_module_id, presence: true 

    #Integer validation
    validates :lesson_id, numericality: true
    validates :code_module_id, numericality: true

end
