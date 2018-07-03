class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # raise params.inspect
        @user = User.new(user_params)
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def show
        if logged_in?
            @user = User.find(params[:id])
        else
            redirect_to "/"
        end
    end


    private


    def user_params
        params.require(:user).permit(:name, :password, :password_digest, :height, :tickets, :happiness, :nausea, :admin)
    end
    
    def require_login
        return head(:forbidden) unless session.include? :user_id   
    end
end


    # def user_filter
    #     @user = User.find(params[:id])
    # end
