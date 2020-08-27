class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
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

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params_booking)
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  private

  def params_booking
    params.require(:booking).permit(:delivery_date, :floor, :building_elevator, :external_elevator, :delivery_address, :delivery_time)
  end

end
