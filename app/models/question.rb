class Question < ApplicationRecord
    belongs_to :lesson
    belongs_to :code_module
end
