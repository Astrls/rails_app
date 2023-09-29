class RegistrationController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id
            @profile = @user.create_profile
            @user.profile_id = @profile.id
            @user.save
            redirect_to root_path, notice: "succesfully created an account"
        else
            render :new, status: 422
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end