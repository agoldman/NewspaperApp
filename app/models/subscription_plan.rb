class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :newspaper_id

  belongs_to :newspaper
  has_many :subscriptions
  has_many :users, :through => :subscriptions

end
