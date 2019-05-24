# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting the seed..."
Profile.destroy_all
Booking.destroy_all
User.destroy_all
Item.destroy_all

puts "old records destroyed"

locations = [
  'Panteao Nacional Campo de Santa Clara, Lisbon 1100-471, Portugal',
  'Rua de Santa Cruz do Castelo, 1100-129 Lisbon, Portugal',
  'Rua do Ouro, 1150-060 Lisbon, Portugal',
  'Largo do Carmo, 1200-092 Lisbon, Portugal'
]

# 4.times do
#   owner = User.new(email: Faker::Internet.email,
#                    password: 'topsecret',
#                    password_confirmation: 'topsecret')
#   owner.save(validate: false)
#   item = Item.create!(title: Faker::Appliance.equipment,
#                       remote_photo_url: Faker::LoremFlickr.image,
#                       description: Faker::Lorem.words(10, true).join(" "),
#                       price: Faker::Number.number(2),
#                       address: locations.first,
#                       owner_id: owner.id )
#   locations.shift
# end

owner = User.new(email: 'mark@gmail.com',
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Longboard, like new",
                    remote_photo_url: 'https://www.weekendwarrior.net.au/wp-content/uploads/2017/11/surfboard-zig-zag-front.jpg',
                    description: 'Very nice board, waxed and ready to ride!',
                    price: 12,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Mountain bike",
                    remote_photo_url: 'http://content.bikeroar.com/system/content/000/095/390/large/Angel__s_Camp_Muddy_Bike_by_nickrak.jpg?1414544093',
                    description: 'Great downhill machine, can do it all, loves mud!',
                    price: 30,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: 'antoinette.monnier1@gmail.com',
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Performance skis",
                    remote_photo_url: 'https://factorydirectcraft.com/pimages/20090310160037-053638/miniature_snow_skis_and_poles.jpg',
                    description: '170cm, nice rocker for powder days, can still cut on the hard stuff as well',
                    price: 25,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: 'chicha.marisa@gmail.com',
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Badass Skateboard",
                    remote_photo_url: 'https://media.vogue.com/r/pass/2018/03/07/00-social-crop.jpg',
                    description: "This is an amazing skateboard, rustic so it looks like you skate a lot. Even if you don't - no worries, just bring it to brunch places as a chick magnet, possibly increase 50% of your attractiveness",
                    price: 10,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift


locations = [
  'Plaza Mayor, 28012 Madrid, Spain',
  'Plaza de la Independencia, 7, 28001 Madrid, Spain',
  'Calle de Santa Isabel, 52, 28012 Madrid, Spain',
  'Calle de Ferraz, 1, 28008 Madrid, Spain'
]


owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Longboard, like new",
                    remote_photo_url: 'https://www.weekendwarrior.net.au/wp-content/uploads/2017/11/surfboard-zig-zag-front.jpg',
                    description: 'Very nice board, waxed and ready to ride!',
                    price: 12,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Mountain bike",
                    remote_photo_url: 'http://content.bikeroar.com/system/content/000/095/390/large/Angel__s_Camp_Muddy_Bike_by_nickrak.jpg?1414544093',
                    description: 'Great downhill machine, can do it all, loves mud!',
                    price: 30,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Performance skis",
                    remote_photo_url: 'https://factorydirectcraft.com/pimages/20090310160037-053638/miniature_snow_skis_and_poles.jpg',
                    description: '170cm, nice rocker for powder days, can still cut on the hard stuff as well',
                    price: 25,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Wet suit, size lrg",
                    remote_photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS780ZRQovktuLCRkZArG7UZai-O77IisgmvWlVwhY382lco0wezg',
                    description: 'Great for those cold days in the water, will keep you going!',
                    price: 15,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift
puts "all done!"    #=> "Christophe Bartell"
