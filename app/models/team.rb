class Team < ApplicationRecord
  has_many :users
  has_many :invoices
  validates :rental_period, presence: true, numericality: { less_than: 25, greater_than: 0 }


end
