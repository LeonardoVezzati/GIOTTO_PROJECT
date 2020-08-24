class Package < ApplicationRecord
  belongs_to :furniture
  belongs_to :booking
end
