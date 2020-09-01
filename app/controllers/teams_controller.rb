class TeamsController < ApplicationController

  def index
    @current_user_team = User.all.filter { |user| user.team_id == current_user.team_id }
    @team = current_user.team
    @total_members= @team.users.count
    
    @total_users_budget = @team.users.map { |user| user.budget_per_month }.sum
  end

  def packages
    @user = User.find(params[:user_id])
    @current_user_packages = @user.bookings.map{|b| b.packages }.flatten

    if current_user.team_id == User.find(params[:user_id]).team_id
      redirect_to packages_path(user: @user)
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

  def params_team
    params.require(:team).permit(:rental_period)
  end
end

