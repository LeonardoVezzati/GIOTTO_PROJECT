class PackagesController < ApplicationController

    def new
    @package = Package.new
  end


  def create
    @package = Package.new(params_package)
    @furniture = Furniture.find(params[:furniture_id])
    @package.furniture = @furniture
    @booking = current_user.bookings.find_by(status: "pending")
    @package.booking = @booking
    if @package.save!
      redirect_to package_path
    else
      render :new
    end
  end

  def index
    @package = Package.all
  end

  def params_package
    params.require(:package).permit(:number)
  end
end
