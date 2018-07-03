class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def signin
    session[:user_id] = params[:id] 
  end

  # def current_user
  #   @current_user ||= session[:user_id])
  # end

  def logged_in?
    session
  end
end