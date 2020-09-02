class TeamsController < ApplicationController

  def index
    @current_user_team = User.all.filter { |user| user.team_id == current_user.team_id }
    @team = current_user.team.users.map { |user| { user: user, expenses: user.packages.map{ |pack| pack.price }.sum }}
    @total_members= current_user.team.users.count

  end

  def packages
    @current_user_packages = User.find(params[:user_id]).bookings.map{|b| b.packages }.flatten

    if current_user.team_id == User.find(params[:user_id]).team_id
      redirect_to packages_path(user: params[:user_id])
    else
      redirect_to teams_path
      flash[:alert] = 'Sorry, no access to that user.'
    end
  end

  def update
    @team = Team.find(params[:id])
    @team.update(params_team)
    redirect_to teams_path
  end

  private

  def price(user, pack)
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
    (((pack.furniture.price_cents * divide) * pack.number)/100).ceil
  end

  def params_team
    params.require(:team).permit(:rental_period)
  end
end

