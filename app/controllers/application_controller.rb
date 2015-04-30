class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_parameter_sanitizer, if: :devise_controller?
  protected

  def configure_parameter_sanitizer

    if resource_class == Employer
    	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :description, :website, :phone) }
    	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :description, :website, :phone) }  
    else
    	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
    	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
    end
    
  end
end
