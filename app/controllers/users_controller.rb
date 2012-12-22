class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: "The user was created!"
    else
      redder 'new'
    end
  end
  
end