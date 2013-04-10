class AddSubscriptionPlanTable < ActiveRecord::Migration
  def change
    create_table :subscription_plans do |t|
      t.integer  :newspaper_id
      t.decimal  :price
      t.boolean  :weekly
    end
    add_index :subscription_plans, :newspaper_id
  end
end
