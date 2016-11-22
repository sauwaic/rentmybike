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
Bike.destroy_all

bike1_attributes = {
  size: "small",
  gender: "female",
  category: "racing",
  gears: 3,
  condition: "good",
  price: 100
}

bike2_attributes = {
  size: "large",
  gender: "male",
  category: "racing",
  gears: 3,
  condition: "good",
  price: 200
}

User.first.bikes.build(bike1_attributes).save
User.last.bikes.build(bike2_attributes).save

#Associating accessories with bikes
BikeAccessory.create(bike_id: 1, accessory_id: 25)
BikeAccessory.create(bike_id: 1, accessory_id: 26)
