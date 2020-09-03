class Furniture < ApplicationRecord
  monetize :price_cents
  has_many_attached :images
end
