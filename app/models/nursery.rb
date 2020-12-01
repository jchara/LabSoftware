class Nursery < ApplicationRecord
  belongs_to :producer
  belongs_to :department
  belongs_to :labor
  validates :nursery_code, presence: true, uniqueness: true, format: {with: /\d/ }
end
