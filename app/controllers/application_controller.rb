class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def signin
    sessions[:user_id] = params[user.id]  
  end

  def current_user
    @current_user ||= User.find(params[:id])
  end

  def logged_in?
    !current_user.nil?
  end
end
