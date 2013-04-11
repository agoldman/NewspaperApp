class Subscription < ActiveRecord::Base
  attr_accessible :subscription_plan_id, :user_id

  belongs_to :user
  belongs_to :subscription_plan

  validates :subscription_plan_id, :user, :presence => true
end
