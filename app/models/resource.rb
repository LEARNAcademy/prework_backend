class Resource < ApplicationRecord
    belongs_to :question
    validates :name, :link, :question_id, presence: true
end
