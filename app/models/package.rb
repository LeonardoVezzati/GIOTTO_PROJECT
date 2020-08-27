class Package < ApplicationRecord
  belongs_to :furniture
  belongs_to :booking, optional: true
  belongs_to :user
  validates :number, presence: true


end
