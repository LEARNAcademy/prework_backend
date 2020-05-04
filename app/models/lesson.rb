class Lesson < ApplicationRecord
    # Relational belongs_to and has_many.
    belongs_to :code_module
    has_many :questions
    
    # Validation for prescence.
    validates :content, :code_module_id, :title, presence: true

    # Validation for uniqueness
    validates :title, uniqueness: { case_sensitive: false }

    #Validation for length
    validates :title, length: { minimum: 3}

    #Validation for integer
    validates :code_module_id, numericality: true
end
