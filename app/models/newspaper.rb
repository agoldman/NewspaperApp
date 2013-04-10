class Newspaper < ActiveRecord::Base
  attr_accessible :editor, :title

  has_many :subscription_plans
  accepts_nested_attributes_for :subscription_plans, :reject_if=> proc {|attributes| attributes[:entry].blank?}
end
