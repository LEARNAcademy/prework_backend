class Lesson < ApplicationRecord
    #Relational belongs_to and has_many.
    belongs_to :code_module
    has_many :questions
    
    #Validation below.
    validates :content, :question, :completed, :code_module_id, :title, presence: true

end
