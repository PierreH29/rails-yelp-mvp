# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 5 fake restaurants...'
5.times do |i|
  restaurant = Restaurant.create!(
    name: Faker::Company.name,
    address: Faker::Company.catch_phrase,
    phone_number: Faker::Company.buzzword,
    category: 'italian'
  )
  puts "#{i + 1}. #{restaurant.name}"
end
puts 'Finished!'
