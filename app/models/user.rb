class User < ApplicationRecord
  after_create :create_booking
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :bookings
  belongs_to :team, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :database_authenticatable, :invitable


 def create_booking
  #self.bookings.create({status: "pending"})
 end



end
