# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Mooring.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating moorings"
mooring_one = Mooring.create!(name: 'Chocolate canal', longitude: '-62.14805', latitude: '128.51489')
mooring_two = Mooring.create!(name: 'Stawberry canal', longitude: '25.50254', latitude: '175.39889')

puts "Creating one user"
user = User.create(email: "niall@lewagon.com", password: "123456")

puts "Creating bookings"
Booking.create(start_date: Date.today, end_date: Date.today + 2, user: user, mooring: mooring_one )
Booking.create(start_date: Date.today, end_date: Date.today + 2, user: user, mooring: mooring_two )

