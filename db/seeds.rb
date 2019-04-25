# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

10.times do
  city = City.create!(city_name: Faker::Address.city)
end

10.times do
  dog = Dog.create!(dog_name: Faker::Creature::Dog.name, city_id: City.all.sample.id)
end

10.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

10.times do
  stroll = Stroll.create!(date: Faker::Date.birthday(18, 20), dog_id: Dog.all.sample.id , dogsitter_id: Dogsitter.all.sample.id)
end


