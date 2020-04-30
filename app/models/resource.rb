class Resource < ApplicationRecord
    belongs_to :question
    validates :name, :link, :question_id, presence: true
    validates :question_id, numericality: true
    validates :name, :link, length: { minimum: 3 }
end
