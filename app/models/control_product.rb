class ControlProduct < ApplicationRecord
    has_many :labors, dependent: :delete_all
end
