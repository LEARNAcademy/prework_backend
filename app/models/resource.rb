class Resource < ApplicationRecord
    #Relational declares
    belongs_to :question

    #Validates for presence.
    validates :name, :link, :question_id, presence: true

    #Validates for integer
    validates :question_id, numericality: true

    #Validates for minimal length
    validates :name, :link, length: { minimum: 3 }
    
end
