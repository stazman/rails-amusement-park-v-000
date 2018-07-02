class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_or_create_by(user_params)
        @user.save
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :height, :tickets, :happiness, :nausea)
    end
    
end