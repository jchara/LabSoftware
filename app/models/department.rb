class Department < ApplicationRecord
  has_many :nurseries, dependent: :delete_all
  has_many :towns
end

