class SessionController < ApplicationController

    def new
        
    end

    def create
        session[:user_id] = params[@user.id]
        # redirect_to user_path
    end

end