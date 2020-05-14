class Category < ApplicationRecord
  belongs_to :super_category
  has_many :products
  has_many :headers, through: :products
  has_many :countries, through: :products
end
