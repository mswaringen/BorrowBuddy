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

10.times do
  owner = User.new(email: Faker::Internet.email,
                   password: 'topsecret',
                   password_confirmation: 'topsecret')
  owner.save(validate: false)
  item = Item.create!(title: Faker::Appliance.equipment,
                      photo: Faker::LoremFlickr.image,
                      description: Faker::Lorem.words(10, true).join(" "),
                      price: Faker::Number.number(2),
                      owner_id: owner.id )
end


puts "all done!"    #=> "Christophe Bartell"
