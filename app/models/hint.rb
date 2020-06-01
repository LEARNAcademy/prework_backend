class Hint < ApplicationRecord
    #Model relations
    belongs_to :question

    #Validations for presence
    validates  :title, :content, presence: true

    #Integer validation
    validates :question_id, numericality: true

    #Length validation
    validates :title, :content, length: { minimum: 3 }

end
