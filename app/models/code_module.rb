class CodeModule < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :topic
    has_many :lessons
    has_many :questions, through: :lessons
    
    #Validations for presence below.
    validates :lesson, :topic_id, presence: true

    #Integer validations
    validates :topic_id, numericality: true

    #Length validations
    validates :lesson, length: { minimum: 3}

    # Validation for uniqueness
    validates :lesson, uniqueness: { case_sensitive: false }

end
