class Department < ApplicationRecord
  has_many :nurseries, dependent: :delete_all
  has_many :towns,  dependent: :delete_all
end

