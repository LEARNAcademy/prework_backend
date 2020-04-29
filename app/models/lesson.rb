class Lesson < ApplicationRecord
    belongs_to :code_module
    has_many :questions
end
