class Applicants::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy
  before_action :configure_sign_in_params, only: [:create]

  protected

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
