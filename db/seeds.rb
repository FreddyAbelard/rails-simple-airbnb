# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  flat = Flat.create!(
    name: Faker::JapaneseMedia::OnePiece.location,
    address: Faker::Address.street_name,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(50..200),
    number_of_guests: rand(1..6)
  )
  puts "Flat #{flat.id} was created"
end
puts "All done"
