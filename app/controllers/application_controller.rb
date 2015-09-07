class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

      def configure_permitted_parameters
          devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
          devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address_line_1, :address_line_2, :postcode, :city, :country) }
      end

      def verify_is_admin
        (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
      end
end
