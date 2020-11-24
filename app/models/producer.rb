class Producer < ApplicationRecord
    has_many :nurseries
    validates :document_type, presence: true
    validates :document_number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :lastname, presence: true
end
