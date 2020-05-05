class CodeModule < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :user
    belongs_to :topic
    has_many :lessons
    has_many :questions, through: :lessons
    
    #Validations for presence below.
    validates :lesson, :user_id, presence: true

    #Integer validations
    validates :user_id, numericality: true

    #Length validations
    validates :lesson, length: { minimum: 3}

end
