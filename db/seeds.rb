ActiveRecord::Base.transaction do
  newspaper1 = Newspaper.create!(title: "Daily News", editor: "April Goldman")
  newspaper2 = Newspaper.create!(title: "Corgis Monthly", editor: "Blixa Goldman")

  newspaper1.subscription_plans.create!(price: 59.99, weekly: true)
  newspaper1.subscription_plans.create!(price: 199.99, weekly: false)

  newspaper2.subscription_plans.create!(price: 1.99, weekly: true)
  newspaper2.subscription_plans.create!(price: 9.99, weekly: false)
end