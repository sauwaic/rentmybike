# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: Please first create two Users via browser

# Creating list of accessories
Accessory.destroy_all

%w(front-light back-light basket trolley back-seat lock).each do |accessory|
  Accessory.create(name: accessory)
end

#Creating bikes
User.destroy_all
Bike.destroy_all

5.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.user_name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.city,
    email: Faker::Internet.email,
    password: "123456"
    )

  bike_attributes = {
    size: ["large", "small", "medium"].sample,
    gender: ["male", "female"].sample,
    category:  ["racing", "mountain", "city", "fixie"].sample,
    gears:  [0, 3, 7, 14, 21].sample,
    condition:  ["excellent", "good", "fair"].sample,
    price: [25, 45, 99, 65, 100, 700, 225].sample
  }

  user.bikes.build(bike_attributes).save
end

