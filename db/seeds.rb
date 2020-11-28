# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Generating flats'
types = %w[apartment bedroom livingroom]
8.times do
  flat = Flat.create!(
    name: Faker::Games::HalfLife.location,
    address: Faker::Address.full_address,
    description: Faker::Movies::Ghostbusters.quote,
    price_per_night: (45..650).to_a[rand(651 - 45)],
    number_of_guests: (1..5).to_a[rand(6)],
    image_url: "https://source.unsplash.com/1600x900/?#{types[rand(3)]},#{rand(11)}"
  )
  puts "#{flat.name} created"
end
