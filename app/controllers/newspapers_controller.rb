class NewspapersController < ApplicationController

  def index
    @newspapers = Newspaper.all
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def new
    @newspaper = Newspaper.new
    2.times{ @newspaper.subscription_plans.build }
  end

  def create

    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      flash[:success] = "You've made a new Newspaper!"
      redirect_to newspaper_url(@newspaper)
    else
      flash[:error] = "Invalid Entries"
      render :new
    end
  end
end
