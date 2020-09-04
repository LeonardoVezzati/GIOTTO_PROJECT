class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.user = current_user
    @booking.status = "pending"
    @booking.packages = current_user.packages.where(booking_id: nil)
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all.order(created_at: :desc)

    if params[:category].present?
      @furnitures = Furniture.where(category: params[:category])

            @booking = current_user.bookings.find_by(status: "pending")
      @packages = current_user.packages.where(booking: @booking)


      @total_items = 0
      @packages.each do |package|
        @total_items += package.number
      end


      @booking = current_user.bookings.find_by(status: "pending")
      @packages = current_user.packages.where(booking: @booking)

      @total = 0
      divide = 0
        if current_user.team.rental_period == 1
          divide = 0.20
        elsif current_user.team.rental_period == 2
          divide = 0.125
        elsif current_user.team.rental_period == 3
          divide = 0.0933
        elsif current_user.team.rental_period == 4
          divide = 0.0775
        elsif current_user.team.rental_period == 5
          divide = 0.068
        elsif current_user.team.rental_period == 6
          divide = 0.06
        elsif current_user.team.rental_period == 7
          divide = 0.0543
        elsif current_user.team.rental_period == 8
          divide = 0.0513
        elsif current_user.team.rental_period == 9
          divide = 0.0489
        elsif current_user.team.rental_period == 10
          divide = 0.047
        elsif current_user.team.rental_period == 11
          divide = 0.0445
        else
          divide = 0.0417
        end
        @packages.each do |package|
          @total += (((package.furniture.price_cents * divide) * package.number)/100).ceil
        end

        @budget = 100
        @budget - @total





    else
      @furnitures = Furniture.all

      @booking = current_user.bookings.find_by(status: "pending")
      @packages = current_user.packages.where(booking: @booking)


      @total_items = 0
      @packages.each do |package|
        @total_items += package.number
      end


      @booking = current_user.bookings.find_by(status: "pending")
      @packages = current_user.packages.where(booking: @booking)

      @total = 0
      divide = 0
        if current_user.team.rental_period == 1
          divide = 0.20
        elsif current_user.team.rental_period == 2
          divide = 0.125
        elsif current_user.team.rental_period == 3
          divide = 0.0933
        elsif current_user.team.rental_period == 4
          divide = 0.0775
        elsif current_user.team.rental_period == 5
          divide = 0.068
        elsif current_user.team.rental_period == 6
          divide = 0.06
        elsif current_user.team.rental_period == 7
          divide = 0.0543
        elsif current_user.team.rental_period == 8
          divide = 0.0513
        elsif current_user.team.rental_period == 9
          divide = 0.0489
        elsif current_user.team.rental_period == 10
          divide = 0.047
        elsif current_user.team.rental_period == 11
          divide = 0.0445
        else
          divide = 0.0417
        end
        @packages.each do |package|
          @total += (((package.furniture.price_cents * divide) * package.number)/100).ceil
        end

        @budget = 100
        @budget - @total
      end
 
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
