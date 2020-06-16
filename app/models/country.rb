class Country < ApplicationRecord
has_many :products
has_many :headers, through: :products
has_one_attached :photo
end
