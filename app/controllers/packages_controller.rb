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
      flash[:alert] = 'Item added to your package.'
    else
      render 'furnitures/show'
    end
  end

  def index
    @user = User.find_by(id: params[:user])
    @user ||= current_user
    @booking = @user.bookings.find_by(status: "pending")
    @packages = @user.packages.where(booking: @booking).order(:created_at)

    @total_items = 0
    @packages.each do |package|
      @total_items += package.number
    end

    @total = 0

      @packages.each do |package|
        @total += package.price
      end

      @budget = 100
      @budget - @total
  end

  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    redirect_to packages_path(user: current_user)
  end

  def update
    @package = Package.find(params[:id])
    @package.update(params_package)
    redirect_to packages_path(user: current_user)
  end

  def item_increase
    @pack_numb = Package.find(params[:id])
    @pack_numb.number += 1
    @pack_numb.save
    redirect_to packages_path(user: current_user, anchor: "package-#{@pack_numb.id}")

  end

  def item_decrease
    @pack_numb = Package.find(params[:id])
    @pack_numb.number -= 1
    @pack_numb.save
    redirect_to packages_path(user: current_user, anchor: "package-#{@pack_numb.id}")
  end

  private

  def params_package
   params.require(:package).permit(:number, :furniture_id)
  end

  def set_user
    @user = current_user
  end
end
