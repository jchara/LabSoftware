class Labor < ApplicationRecord
  belongs_to :Control_product
  has_and_belongs_to_many :nurseries
end
