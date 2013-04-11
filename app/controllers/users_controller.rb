class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @newspapers = Newspaper.all
    @newspapers.length { @user.subscriptions.build }
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "You Signed Up!"
      redirect_to user_url(@user)
    else
      flash[:error] = "Invalid Inputs"
      render :new
    end
  end

end
