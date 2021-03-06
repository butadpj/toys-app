class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?, :admin?, 

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def admin?
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        @current_user.is_admin
    end 
    
 
    def require_user
        if !logged_in?
            flash[:alert] = "You must be logged in to perform that action."
            redirect_to login_path
        end
    end
end
