class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @package = Package.find(params[:package_id])
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    @package = Package.find(params[:package_id])
    @booking.package = @package
    @booking.status = "pending"
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  private

  def params_booking
    params.require(:booking).permit(:delivery_date, :floor, :building_elevator, :external_elevator, :delivery_address)
  end

end
