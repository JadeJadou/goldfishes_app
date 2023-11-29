# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Shark.destroy_all
User.destroy_all

user = User.create!(first_name: "John", email: "john@email.com", password: "123456")
shark1 = Shark.create!(name: "Nemo", description: "Looking for his father", price_per_day: 100, owner_id: user.id, address: "42 Wallaby Way, Sydney")
shark2 = Shark.create(name: "Dory", description: "Swim right ahead", price_per_day: 80, owner_id: user.id, address: "1-5 Wheat Rd, Sydney NSW 2000, Australie")
shark3 = Shark.create(name: "Polochon", description: "Je m'emmèle les nageoires", price_per_day: 90, owner_id: user.id, address: "St Pierre, Martinique")

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701253886/development/70pfqn47jzmd74csirarx5nufe4p.jpg")
shark1.photos.attach(io: file, filename: "Nemo.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186287/xqavpcivs3msufdddbcv.jpg")
shark2.photos.attach(io: file, filename: "Dory.jpg", content_type: "image/jpg")
file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186267/g3tueo287ksownxxdawb.jpg")
shark3.photos.attach(io: file, filename: "Polochon.jpg", content_type: "image/jpg")

shark1.save
shark2.save
shark3.save
