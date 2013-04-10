class SubscriptionPlansController < ApplicationController

  def index
    @subscription_plans = SubscriptionPlan.all
  end

  def show
    @subscription_plan = SubscriptionPlan.find(params[:id])
  end

  def new
    @newspaper = Newspaper.find(params[:newspaper_id])
    @subscription_plan = SubscriptionPlan.new
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    @subscription_plan.newspaper_id = params[:newspaper_id]
    @newspaper = Newspaper.find(params[:newspaper_id])
    if @subscription_plan.save
      flash[:success] = "You made a new subscription plan"
      redirect_to newspaper_url(@newspaper)
    else
      flash[:error] = "Invalid input"
      render :new
    end
  end

end
