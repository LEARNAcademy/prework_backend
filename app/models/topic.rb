class Topic < ApplicationRecord
    #Model relation.
    has_many :code_modules

    #Validations for presence below.
    validates :title, presence: true

    #Length validations
    validates :title, length: { minimum: 3}

end
