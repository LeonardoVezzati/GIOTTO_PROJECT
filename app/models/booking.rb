class Booking < ApplicationRecord
  belongs_to :user
  has_many :packages, dependent: :destroy
  # validates :delivery_date, presence: true
  # validates :delivery_time, presence: true
  # validates :delivery_address, presence: true
  # validates :status, presence: true
  # validates :floor, presence: true
  # validates :external_elevator, :acceptance => true
end
