class CodeModule < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :user
    has_many :lessons
    has_many :questions, through: :lessons
    
    #Validations for prescence.
    validates :lesson, :completed, :user_id, presence: true
    
    # Validates boolean
    validates :completed, inclusion: [true, false]

    # Validates integer
    validates :user_id, :numericality => {:only_integer => true}

    # Validates uniuqeness
    validates :lesson, uniqueness: { case_sensitive: false }

end
