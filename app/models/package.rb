class Package < ApplicationRecord
  belongs_to :furniture
  belongs_to :booking

  validates :number, presence: true


end
