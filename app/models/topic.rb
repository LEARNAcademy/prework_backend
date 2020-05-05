class Topic < ApplicationRecord

    #Model relation.
    has_many :code_modules

    #Validations for presence below.
    validates :title, presence: true

    #Validation for length
    validates :title, length: { minimum: 3}

    # Validation for uniqueness
    validates :title, uniqueness: { case_sensitive: false }

end
