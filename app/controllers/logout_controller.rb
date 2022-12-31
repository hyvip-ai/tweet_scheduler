class LogoutController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect_to home_path, notice:"Logged out successfully"
    end
end