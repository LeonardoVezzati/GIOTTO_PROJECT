class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:team_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:status])
    devise_parameter_sanitizer.permit(:account_update, keys: [:budget_per_month])
  end
end
