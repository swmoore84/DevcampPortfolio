class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :device_controller? #configure_permitted_parameters can be any name

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
