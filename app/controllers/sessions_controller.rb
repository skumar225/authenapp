class SessionsController < ApplicationController

  def index

  end

  def create 
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to users_route_path, notice: "Signed in!"
  end

  def destroy
     session[:user_id] = nil
     redirect_to root_url, notice: "Signed out! Goodbye."
  end
end