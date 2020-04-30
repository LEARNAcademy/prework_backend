class CodeModule < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :user
    has_many :lessons
    has_many :questions, through: :lessons
    
    #Validations below.
    validates :lesson, :completed, :user_id, presence: true
    # Validates boolean
    validates :completed, inclusion: [true, false]
    # Validates string
    validates :lesson, format: {with: /[a-zA-Z]/}
    validates :progress, format: {with: /[a-zA-Z]/}

end
