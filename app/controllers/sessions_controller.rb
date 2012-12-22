class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to root_path, notice: "You have been logined in!"
    else
      flash[:error] = "Couldn't log you in!"
      render 'new'
    end
  end
  
  def destory
    session[:user] = nil
    redirect_to root_path, notice: "You have been logged out."
  end
  
end
