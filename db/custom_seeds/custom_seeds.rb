require './config/environment'

#seed_users

10.times do
  name = Faker::Name.name
  email = Faker::Internet.email(name)
  password = Faker::Internet.password
  User.create(
    name: name,
    email: email,
    password: password
  )
end

User.all.each do|u|
  u.carts.create
  u.orders.create
end

#seed categories

10.times do
  Category.create(title: Faker::Commerce.department)
end

#seed carts with items
Cart.all.each do |c|
  10.times do
    c.items.create(
      title: Faker::Commerce.product_name,
      inventory: Faker::Number.number(2),
      price: Faker::Number.number(4)
    )
  end

  counter = 1
  c.items.all.each do |item|
    item.category_id = counter
    item.save
    counter += 1
  end
  c.save
end

#seed orders with items

Order.all.each do |o|
  5.times do
    o.items.create(
      title: Faker::Commerce.product_name,
      inventory: Faker::Number.number(2),
      price: Faker::Commerce.price
    )
  end

  counter = 1
  o.items.all.each do |item|
    item.category_id = counter
    item.save
    counter += 1
  end
  o.save
end
