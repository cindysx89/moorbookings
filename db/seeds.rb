# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning DB"
Mooring.destroy_all
Amenity.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating moorings"
paddington_one = Mooring.create!(name: 'Paddington 1', longitude: '-0.181087', latitude: '51.522387')
paddington_two = Mooring.create!(name: 'Paddington 2', longitude: '-0.180738', latitude: '51.522574')
paddington_three = Mooring.create!(name: 'Paddington 3', longitude: '-0.180392', latitude: '51.522758')
paddington_four = Mooring.create!(name: 'Paddington 4', longitude: '-0.179896', latitude: '51.523037')
paddington_five = Mooring.create!(name: 'Paddington 5', longitude: '-0.179439', latitude: '51.523291')
camden_one = Mooring.create!(name: 'Camden 1', longitude: '-0.132197', latitude: '51.538319')
camden_two = Mooring.create!(name: 'Camden 2', longitude: '-0.131964', latitude: '51.538184')
camden_three = Mooring.create!(name: 'Camden 3', longitude: '-0.131620', latitude: '51.538038')
camden_four = Mooring.create!(name: 'Camden 4', longitude: '-0.131333', latitude: '51.537897')
camden_five = Mooring.create!(name: 'Camden 5', longitude: '-0.131087', latitude: '51.537776')
kingscross_one = Mooring.create!(name: 'Kings Cross 1', longitude: '-0.121549', latitude: '51.535419')
kingscross_two = Mooring.create!(name: 'Kings Cross 2', longitude: '-0.120371', latitude: '51.535330')
kingscross_three = Mooring.create!(name: 'Kings Cross 3', longitude: '-0.119513', latitude: '51.535255')
kingscross_four = Mooring.create!(name: 'Kings Cross 4', longitude: '-0.118552', latitude: '51.535179')
kingscross_five = Mooring.create!(name: 'Kings Cross 5', longitude: '-0.116543', latitude: '51.534984')
angel_one = Mooring.create!(name: 'Angel 1', longitude: '-0.101936', latitude: '51.533121')
angel_two = Mooring.create!(name: 'Angel 2', longitude: '-0.101614', latitude: '51.533079')
angel_three = Mooring.create!(name: 'Angel 3', longitude: '-0.101285', latitude: '51.533044')
angel_four = Mooring.create!(name: 'Angel 4', longitude: '-0.100924', latitude: '51.532995')
angel_five = Mooring.create!(name: 'Angel 5', longitude: '-0.100681', latitude: '51.532959')
angel_six = Mooring.create!(name: 'Angel 6', longitude: '-0.099441', latitude: '51.532823')
angel_seven = Mooring.create!(name: 'Angel 7', longitude: '-0.097895', latitude: '51.532744')
angel_eight = Mooring.create!(name: 'Angel 8', longitude: '-0.097444', latitude: '51.532840')
angel_nine = Mooring.create!(name: 'Angel 9', longitude: '-0.096269', latitude: '51.533160')
angel_ten = Mooring.create!(name: 'Angel 10', longitude: '-0.095950', latitude: '51.533270')
broadwaymarket_one = Mooring.create!(name: 'Broadway Market 1', longitude: '-0.069290', latitude: '51.535835')
broadwaymarket_two = Mooring.create!(name: 'Broadway Market 2', longitude: '-0.068890', latitude: '51.535791')
broadwaymarket_three = Mooring.create!(name: 'Broadway Market 3', longitude: '-0.068297', latitude: '51.535749')
broadwaymarket_four = Mooring.create!(name: 'Broadway Market 4', longitude: '-0.067804', latitude: '51.535730')
broadwaymarket_five = Mooring.create!(name: 'Broadway Market 5', longitude: '-0.067239', latitude: '51.535717')

puts "Creating amenities"
paddington_amenities = Amenity.create!(picture: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/London_UK_Little-Venice-01.jpg/1920px-London_UK_Little-Venice-01.jpg', longitude: '-0.184299', latitude: '51.521254', rubbish_point: true, pump_out: true, water_point: true, toilets: true, elsan: true)
camden_amenities = Amenity.create!(picture: 'https://lily.cdn.prismic.io/lily/c58398d57f0abf55beaea25afd5fd42374c91f53_camden-lock-bridge-camden-market_cm_jo_hero.jpg', longitude: '-0.128643', latitude: '51.536257', rubbish_point: true, pump_out: false,  water_point: false, toilets: false, elsan: false)
angel_amenities = Amenity.create!(picture: 'https://i.pinimg.com/564x/e7/47/bf/e747bf1fa4e60d5bbd30628a81ac002b.jpg', longitude: '-0.099985', latitude: '51.532870', rubbish_point: true, pump_out: false,  water_point: true, toilets: false, elsan: false)
broadwaymarket_amenities = Amenity.create!(picture: 'https://78.media.tumblr.com/tumblr_m7ejr1X5QJ1qgsymxo1_500.jpg', longitude: '-0.063524', latitude: '51.535590', rubbish_point: false, pump_out: false,  water_point: true, toilets: false, elsan: true)

puts "Creating users"
user_niall = User.create(email: "niall@lewagon.com", password: "123456")
user_cindy = User.create(email: "cindy@lewagon.com", password: "123456")
user_adrien = User.create(email: "adrien@lewagon.com", password: "123456")

puts "Creating bookings"
Booking.create(start_date: Date.today, end_date: Date.today + 2, user: user_niall, mooring: paddington_one)
Booking.create(start_date: Date.today, end_date: Date.today + 2, user: user_cindy, mooring: angel_two)
Booking.create(start_date: Date.today, end_date: Date.today + 2, user: user_adrien, mooring: camden_two)

puts "Database seeded"
