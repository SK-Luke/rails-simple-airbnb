require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
4.times do
  flat = Flat.new({
    name: Faker::Fantasy::Tolkien.location,
    address: Faker::Address.street_address,
    description: Faker::Fantasy::Tolkien.poem,
    price_per_night: rand(50..300),
    number_of_guests: rand(1..5)
  })
  flat.save
end
puts "Finished!"
