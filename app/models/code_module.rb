class CodeModule < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :user
    has_many :lessons
    has_many :questions, through: :lessons
    
    #Validations below.
    validates :lesson, :progress, :completed, :user_id, presence: true

end
