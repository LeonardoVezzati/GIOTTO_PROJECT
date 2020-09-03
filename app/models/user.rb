class User < ApplicationRecord
  after_create :create_booking
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :picture
  has_many :orders
  has_many :bookings
  has_many :packages
  belongs_to :team, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :database_authenticatable, :invitable

  validates :budget_per_month, numericality: { greater_than: 0 }
  after_create :create_team 


  def create_team 
    if team_id.nil? 
      team = Team.create(rental_period: 12)
      self.update team: team
    end
  end

# quick fix: removed validation from booking model. Why do we create a booking for every user?
 def create_booking
  self.bookings.create({status: "pending"})
 end



end
