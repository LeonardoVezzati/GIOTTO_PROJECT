class PackagesController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(params_package)
    @booking = current_user.bookings.find_by(status: "pending")
    @package.booking = @booking
    @package.user = current_user
    @furniture = @package.furniture
    if @package.save
      # notifiction "added to your packages
      redirect_to furnitures_path
    else
      render 'furnitures/show'
    end
  end

  def index
    @booking = current_user.bookings.find_by(status: "pending")
    @packages = current_user.packages.where(booking: @booking)
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
