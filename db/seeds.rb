# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Shark.destroy_all

user = User.create!(first_name: "John", email: "john@email.com", password: "123456")
Shark.create!(name: "Nemo", description: "Looking for his father", price_per_day: 100, owner_id: user.id)
Shark.create(name: "Dory", description: "Swim right ahead", price_per_day: 80, owner_id: user.id)
Shark.create(name: "Polochon", description: "Je m'emmèle les nageoires", price_per_day: 90, owner_id: user.id)


