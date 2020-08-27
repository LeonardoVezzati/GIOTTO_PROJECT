class Package < ApplicationRecord
  belongs_to :furniture
  belongs_to :booking, optional: true

  validates :number, presence: true


end
