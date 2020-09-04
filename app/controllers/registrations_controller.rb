class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    packages_path # Or :prefix_to_your_route
  end

  def after_update_path_for(resource)
    packages_path
  end

  def after_sign_in_path_for(resource)
    packages_path(user: current_user) # Or :prefix_to_your_route
  end
end
