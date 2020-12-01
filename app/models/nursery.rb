class Nursery < ApplicationRecord
  belongs_to :producer
  belongs_to :department
  has_and_belongs_to_many :labors
end
