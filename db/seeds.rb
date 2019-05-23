# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting the seed..."
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
                    remote_photo_url: Faker::LoremFlickr.image,
                    description: 'Great downhill machine, can do it all',
                    price: 30,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift

owner = User.new(email: Faker::Internet.email,
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)
item = Item.create!(title: "Performance skis",
                    remote_photo_url: Faker::LoremFlickr.image,
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
                    remote_photo_url: Faker::LoremFlickr.image,
                    description: 'Great for those cold days in the water, will keep you going!',
                    price: 15,
                    address: locations.first,
                    owner_id: owner.id )
locations.shift


locations = [
  'Plaza Mayor, 28012 Madrid, Spain',
  'Plaza de la Independencia, 7, 28001 Madrid, Spain',
  'Calle de Santa Isabel, 52, 28012 Madrid, Spain',
  'Calle de Ferraz, 1, 28008 Madrid, Spain'
]



puts "all done!"    #=> "Christophe Bartell"
