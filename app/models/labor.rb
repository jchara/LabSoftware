class Labor < ApplicationRecord
  belongs_to :Control_product
  has_many :nurseries, dependent: :delete_all
end
