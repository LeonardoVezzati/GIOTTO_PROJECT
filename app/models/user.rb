class User < ApplicationRecord
  after_create :create_booking
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 def create_booking
  self.bookings.create({status: "pending"})
 end

end
