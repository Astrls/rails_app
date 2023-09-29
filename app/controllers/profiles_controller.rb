class ProfilesController < ApplicationController
    def index
        @profile = Profile.find_by(id: params[:id])
    end
    def edit
        @profile = Profile.find(params[:id])
    end
    def update
        # if Current.user.update(password_params)
        #     @profile = Profile.find_by(id: params[:id])
        # end
    end
end