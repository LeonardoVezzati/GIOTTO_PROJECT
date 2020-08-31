class TeamsController < ApplicationController

  def index
    @current_user_team = User.all.filter { |user| user.team_id == current_user.team_id }
    @team = current_user.team
  end

  def packages

    @current_user_packages = User.find(params[:user_id]).bookings.map{|b| b.packages }.flatten

    if current_user.team_id == User.find(params[:user_id]).team_id
      render "packages/index"
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

