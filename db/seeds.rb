# frozen_string_literal: true

# comment
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'DB cleaned Captain !'

puts 'Create 5 restaurants'

5.times do
  restaurant =
    Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.cell_phone_in_e164,
      category: Restaurant::CATEGORY.sample
    )
  puts "Restaurant #{restaurant.id} created !"
end

puts "Job's done !"
