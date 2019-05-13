class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    
    $schools = School.order('name ASC')
    
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :graduating, :bio, :email, :password, :admin)}

        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :graduating, :bio, :email, :password, :current_password, :admin)}
    end
end