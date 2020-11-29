class Producer < ApplicationRecord
    has_many :nurseries
    validates :document_type, presence: true
    validates :document_number, presence: true, uniqueness: true, format: {with: /\d/ }
    validates :name, presence: true, format: {with: /\D/ }
    validates :lastname, presence: true, format: {with: /\D/ }
end
