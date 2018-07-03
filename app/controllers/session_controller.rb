class SessionController < ApplicationController

    def new
        
    end

    def create
        # raise params.inspect
        if current_user && current_user.valid?
            signin
            redirect_to user
        else
            redirect_to signin
        end
        # session[:user_id] = params[@user.id]
        # redirect_to user_path
    end

end