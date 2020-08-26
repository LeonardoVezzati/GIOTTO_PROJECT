class Booking < ApplicationRecord
  belongs_to :user

  validates :delivery_date, presence: true
  validates :delivery_time, presence: true
  validates :delivery_address, presence: true
  validates :status, presence: true
  validates :floor, presence: true

end
