class SessionController < ApplicationController

    def new
    end

    def create
        # raise params.inspect
        @user = User.find(params[:name])
        if @user 
            session[:user_id] = @user.id
            redirect_to user
        else
            redirect_to "/"
        end
        # redirect_to user_path
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil
        redirect_to "/signin"
    end
end