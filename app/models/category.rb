class Category < ApplicationRecord
  belongs_to :super_category
  has_many :products
end
