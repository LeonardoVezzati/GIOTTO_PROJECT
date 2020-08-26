class TeamsController < ApplicationController

  def index
    @current_user_team = User.all.filter { |user| user.team_id == current_user.team_id }

  end

  def packages
    @current_user_packages = User.find(params[:user_id]).bookings.map{|b| b.packages }.flatten
    render "packages/index"
  end

end
