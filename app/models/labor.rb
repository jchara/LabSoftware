class Labor < ApplicationRecord
  belongs_to :Control_product
  has_many :nurseries
end
