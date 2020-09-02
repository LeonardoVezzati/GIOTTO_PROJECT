class FurnituresController < ApplicationController
  def index
    @furnitures = Furniture.all

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
    @package = Package.new
    @furniture = Furniture.find(params[:id])
  end


end
