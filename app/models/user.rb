class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids, :password, :remember_token

  has_many :subscriptions, :inverse_of => :user
  has_many :subscription_plans, :through => :subscriptions
  accepts_nested_attributes_for :subscriptions, :reject_if => proc { |attributes| attributes['subscription_plan_id'].blank? }

  validates :name, :presence => true
end


