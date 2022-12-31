class ApplicationController < ActionController::Base
    before_action :set_current_user
    def set_current_user
        user_id = session[:user_id];
        if user_id
            Current.user = User.find_by(id:user_id);
        end
    end
    def required_logged_in_user
        if Current.user.nil?
            redirect_to login_path, notice: 'You must be logged in to that bro'
        end
    end
end
