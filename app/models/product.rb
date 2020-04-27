class Product < ApplicationRecord
  belongs_to :category
  belongs_to :country
  belongs_to :header
  belongs_to :winery
end
