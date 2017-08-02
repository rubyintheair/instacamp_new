# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding data"

puts "Seeding data"
if Photo.count > 0
  puts "WARNING: there is existing data."
  puts "To re-seed, first go to rails console and type 'Photo.delete_all'"
  puts "For heroku, type 'heroku run rails console'"
  exit
end

Photo.create!(url: "https://pbs.twimg.com/media/Clusm_JWYAEj2H-.jpg", username: "mjackson", likes_count: 1234)
Photo.create!(url: "https://pbs.twimg.com/profile_images/720767103712645122/6XEBAXLj.jpg", username: "taylor", likes_count: 232)
Photo.create!(url: "http://i.imgur.com/vrU6Kmu.jpg", username: "gamer", likes_count: 11)

10.times do
  username = Faker::HowIMetYourMother.character
  caption  = Faker::HowIMetYourMother.quote
  url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
  Photo.create!(url: url, username: username,
                caption: caption, likes_count: Faker::Number.number(5))
end

puts "Seeded #{Photo.count} photos."

