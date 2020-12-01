class Nursery < ApplicationRecord
  belongs_to :producer
  has_and_belongs_to_many :labors
  belongs_to :department
end
