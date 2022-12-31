class PasswordController < ApplicationController
    before_action :required_logged_in_user
    def index
    end
    def edit
        if Current.user.update(password_params)
            redirect_to home_path, notice: 'Password successfully updated'
        else
        render :index
        end
    end
    private

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end