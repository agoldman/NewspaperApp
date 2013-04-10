class User < ActiveRecord::Base
  attr_accessible :name, :subscriptions_attributes

  has_many :subscriptions
  has_many :subscription_plans, :through => :subscriptions
  accepts_nested_attributes_for :subscriptions, :reject_if => proc { |attributes| attributes['subscription_plan_id'].blank? }
end
