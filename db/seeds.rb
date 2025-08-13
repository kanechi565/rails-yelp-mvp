# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'resto destroy'
Restaurant.destroy_all

puts 'resto'
Restaurant.create!(
  name: 'Stars',
  address: 'La Madeleine',
  category: Restaurant::CATEGORIES.sample,
  phone_number: '0600000006'
)

Restaurant.create!(
  name: 'Le Gourmet',
  address: 'Paris 7e',
  category: Restaurant::CATEGORIES.sample,
  phone_number: '0611223344'
)

Restaurant.create!(
  name: 'Pizza Bella',
  address: 'Lille',
  category: Restaurant::CATEGORIES.sample,
  phone_number: '0622334455'
)

Restaurant.create!(
  name: 'Sushi Zen',
  address: 'Lyon',
  category: Restaurant::CATEGORIES.sample,
  phone_number: '0633445566'
)

Restaurant.create!(
  name: 'Bistro du Coin',
  address: 'Marseille',
  category: Restaurant::CATEGORIES.sample,
  phone_number: '0644556677'
)
puts 'fini'
