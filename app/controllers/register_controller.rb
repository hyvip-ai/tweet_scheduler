class RegisterController < ApplicationController
    def index()
        @user = User.new
    end
    def create()
        @user = User.new(user_params)   
        if @user.save
            session[:user_id] = @user.id
            redirect_to home_path, notice: 'User was successfully created'
        else
            flash[:alert] = "Something went wrong"
            render :index
        end
    end

    private
    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)
    end
end