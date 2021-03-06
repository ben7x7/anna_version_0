class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type, :first_name, :last_name, :phone, :mobile, :st_number, :street, :zip, :city, :building, :code, :floor, :lift, :door, :comment, :capacity, :photo])

    devise_parameter_sanitizer.permit(:account_update, keys: [:user_type, :first_name, :last_name, :phone, :mobile, :st_number, :street, :zip, :city, :building, :code, :floor, :lift, :door, :comment, :capacity, :photo])
  end
end
