class Product < ApplicationRecord
  belongs_to :category
  belongs_to :country, optional: true
  belongs_to :winery, optional: true
  belongs_to :header, optional: true

end
