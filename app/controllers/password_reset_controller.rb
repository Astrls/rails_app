class PasswordResetController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.present?
        PasswordMailer.with(user: @user).reset.deliver_now
        end
        redirect_to root_path, notice: "If there is an account with that email, you received a link to reset your password"
    end
    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to login_path, alert: "Your reset token has expired, please try again."
    end
    def update
    end
end
