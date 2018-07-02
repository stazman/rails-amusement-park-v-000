class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_or_create_by(user_params)
        redirect_to 'users/#{@user.id}'
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_digest, :height, :tickets, :happiness, :nausea, :admin)
    end
    
end
