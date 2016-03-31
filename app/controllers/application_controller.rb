class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:fname, :email, :password, :password_confirmation, :dob, :gender, :age, :body_weight, :level, :measure) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:lname, :fname, :email, :password,
        :password_confirmation, :current_password, :dob, :gender, :age, :body_weight, :level, :measure) }
  end


  end

