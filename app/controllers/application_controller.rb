class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:team_id])
    devise_parameter_sanitizer.permit(:invite, keys: [:firstname, :lastname, :budget_per_month, :team_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:budget_per_month,:status])
    devise_parameter_sanitizer.permit(:account_update, keys: [:budget_per_month, :firstname, :lastname, :picture])
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

   def after_sign_up_path_for(resource)
    packages_path(user: current_user) # Or :prefix_to_your_route
  end

     def after_sign_in_path_for(resource)
    packages_path(user: current_user) # Or :prefix_to_your_route
  end
end
