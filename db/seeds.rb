ActiveRecord::Base.transaction do
  newspaper1 = Newspaper.create!(title: "Daily News", editor: "April Goldman")
  newspaper2 = Newspaper.create!(title: "Corgis Monthly", editor: "Blixa Goldman")

  n1p1 = newspaper1.subscription_plans.create!(price: 59.99, weekly: true)
  n1p2 = newspaper1.subscription_plans.create!(price: 199.99, weekly: false)

  n2p1 = newspaper2.subscription_plans.create!(price: 1.99, weekly: true)
  n2p2 = newspaper2.subscription_plans.create!(price: 9.99, weekly: false)

  april = User.create!(name: "april")
  blixa = User.create!(name: "blixa")
  laura = User.create!(name: "laura")

  april.subscriptions.create!(subscription_plan_id: n1p1.id)
  april.subscriptions.create!(subscription_plan_id: n1p2.id)

end