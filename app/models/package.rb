class Package < ApplicationRecord
  belongs_to :furniture
  belongs_to :booking, optional: true
  belongs_to :user
  validates :number, presence: true

  validate :under_budget
  def under_budget
    total = Package.total(user)
       
    if (user.budget_per_month - total - (self.price)) < 0 
      errors.add(:number, "You don't have enough budget for these items")
    end
  end

  def price 
    divide = 0 
    if user.team.rental_period == 1 
      divide = 0.20 
    elsif user.team.rental_period == 2 
      divide = 0.125 
    elsif user.team.rental_period == 3 
      divide = 0.0933 
    elsif user.team.rental_period == 4 
      divide = 0.0775 
    elsif user.team.rental_period == 5 
      divide = 0.068 
    elsif user.team.rental_period == 6 
      divide = 0.06 
    elsif user.team.rental_period == 7 
      divide = 0.0543 
    elsif user.team.rental_period == 8 
      divide = 0.0513 
    elsif user.team.rental_period == 9 
      divide = 0.0489 
    elsif user.team.rental_period == 10 
      divide = 0.047 
    elsif user.team.rental_period == 11 
      divide = 0.0445 
    else 
      divide = 0.0417 
    end
    (((furniture.price_cents * divide) * number)/100).ceil 
  end


  def self.total(user)

    packages = user.packages.where(booking: self).or(user.packages.where(booking_id: nil))
    
    total = 0 
 
      packages.each do |package| 
        total += package.price
      end
      
      return total
  end
end
