class PackagesController < ApplicationController
  before_action :set_user, onlyly: [:new, :create]

  def new
    @package = Package.new
    create
  end

  def create
    @package = Package.new(params_package)
    @booking = current_user.bookings.find_by(status: "pending")
    @package.booking = @booking
    @package.save!
    if @package.save!
      # notifiction "added to your packages
      redirect_to furnitures_path
    else

    end
  end

  def index
    @current_user_packages = current_user.bookings.map{|b| b.packages }.flatten
  end

  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    redirect_to packages_path
  end

  private

  def params_package
   params.require(:package).permit(:number, :furniture_id)
  end

  def set_user
    @user = current_user
  end
end
