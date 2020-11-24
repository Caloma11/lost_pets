# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# #
#    t.string "name"
#     t.string "species"
#     t.string "address"
#     t.date "found_on"

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  puts "Creating some pets...."

  20.times do
    new_pet = Pet.new(
        name: Faker::Games::ElderScrolls.name,
        species: Faker::Games::ElderScrolls.creature,
        address: Faker::Games::ElderScrolls.city,
        found_on: Date.today - rand(300.1000)
      )

    new_pet.save
    puts "Crated pet##{new_pet.id}"
  end


puts "Finished seeding."
