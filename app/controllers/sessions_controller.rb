class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.find_by_name(params[:user][:name])
    if @user.password == params[:user][:password]
      login
      flash[:success] = "You Logged In!"
      redirect_to root_path
    else
      flash[:errors] = "Failed Login"
      render :new
    end
  end

  def destroy
    logout
    flash[:success] = "You Logged Out"
    redirect_to root_path
  end

end