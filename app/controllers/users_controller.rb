class UsersController < ApplicationController

  def new
    @user = User.new
    @newspapers = Newspaper.all
  end

  def create
    fail
    @newspaper = Newspaper.new(params[:newspaper])
    @user = User.find(params[:user_id])
    if @newspaper.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

end
