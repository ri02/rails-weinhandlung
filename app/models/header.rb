class Header < ApplicationRecord
  has_many :products
  has_many :countries, through: :products
end
