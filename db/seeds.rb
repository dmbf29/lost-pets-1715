# Fill the DB with some example instances
puts "Cleaning the DB..."
Pet.destroy_all

puts "Creating pets..."
50.times do
  Pet.create!(
    name: Faker::Creature::Horse.unique.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    found_on: Date.today - rand(1..10)
  )
end
puts "...created #{Pet.count} pets."
