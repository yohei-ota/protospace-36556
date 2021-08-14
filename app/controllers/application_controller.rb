class ApplicationController < ActionController::Base
  before_action :configure_pemitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  private
    def configure_pemitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
    end
end
