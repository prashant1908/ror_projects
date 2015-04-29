class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
   before_action :authenticate_user!
   

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_name, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :user_name, :email, :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_name ,:email, :password, :password_confirmation, :current_password) }
  end
  
end
