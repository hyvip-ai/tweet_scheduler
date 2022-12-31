class LoginController < ApplicationController
    def index()
    end
    def create()
        user = User.find_by(email:params[:email])
        puts params[:email]
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to home_path,notice:"Logged in successfully"
        else
            flash[:alert] = "Email or password is incorrect"
            render :index
        end
    end
end