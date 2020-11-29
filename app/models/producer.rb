class Producer < ApplicationRecord
    has_many :nurseries
    validates :document_type, presence: true
<<<<<<< HEAD
    validates :document_number, presence: true, uniqueness: true, format: {with: /\d/ }
    validates :name, presence: true, format: {with: /\D/ }
    validates :lastname, presence: true, format: {with: /\D/ }
=======
    validates :document_number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :lastname, presence: true
>>>>>>> 268e7057e0f39626786f6f3aa40ea92286e03cc0
end
