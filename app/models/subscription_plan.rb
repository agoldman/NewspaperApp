class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :weekly, :newspaper_id

  belongs_to :newspaper
  has_many :subscriptions, inverse_of: :subscription_plan
  has_many :users, :through => :subscriptions

  validates :price, :newspaper, :presence => true

end
