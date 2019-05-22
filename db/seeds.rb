# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting the seed..."

User.destroy_all
Item.destroy_all

puts "old records destroyed"

locations = [
  'Panteao Nacional Campo de Santa Clara, Lisbon 1100-471, Portugal',
  'Rua de Santa Cruz do Castelo, 1100-129 Lisboa, Portugal',
  'Rua do Ouro, 1150-060 Lisboa, Portugal',
  'Largo do Carmo, 1200-092 Lisboa, Portugal'
]

4.times do
  owner = User.new(email: Faker::Internet.email,
                   password: 'topsecret',
                   password_confirmation: 'topsecret')
  owner.save(validate: false)
  item = Item.create!(title: Faker::Appliance.equipment,
                      remote_photo_url: Faker::LoremFlickr.image,
                      description: Faker::Lorem.words(10, true).join(" "),
                      price: Faker::Number.number(2),
                      address: locations.first,
                      owner_id: owner.id )
  locations.shift
end


puts "all done!"    #=> "Christophe Bartell"
