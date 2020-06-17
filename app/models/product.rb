class Product < ApplicationRecord
  belongs_to :category
  belongs_to :country, optional: true
  belongs_to :winery, optional: true
  belongs_to :header, optional: true
  has_one_attached :photo
  monetize :price_cents




  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description],
    associated_against: {
      category: [ :name],
      country: [ :name],
      winery: [ :name],
      header: [ :name],

    },
    using: {
      tsearch: { prefix: true }
    }

end
