class Department < ApplicationRecord
  has_many :nurseries
  has_many :towns
end
