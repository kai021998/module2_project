class ApplicationController < ActionController::Base

    before_action :authorized
    helper_method :logged_in?, :current_user

    def current_user
      @user = User.find_by(id:
      session[:logged_in_user_id])
    end

    def logged_in?
      !!current_user
    end

    def authorized
      unless logged_in?
        redirect_to new_session_path
      end
    end

  end
