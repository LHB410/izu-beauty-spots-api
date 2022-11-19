require 'json'
import 'places.json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating places"
Place.destroy_all

place1 = Place.create(name: "Usami Beach", address: "Usami Beach, Ito, Shizuoka-ken", description: "Great beach for families and surfers", category: "Beach", points: 5 )
place2 = Place.create(name: "Senbonhama Park", address: "〒410-0867 Shizuoka, Numazu, 本字千本1910-1", description: "Lovely Park with beach ", category: "Park", points: 3 )

puts "places created"

# file_path = File.join(Rails.public_path.join("/Users/laurabrooks/code/LHB410/melissa-portfolio/melissa-goodway-portfolio/artwork.json"))
# json = File.read(file_path)
# art_info = JSON.parse(json)

# art_info.each do |art|
#   created_art = Art.create!(
#     title: art["title"],
#     description: art["description"],
#     price_cents: art["price_cents"],
#     category: art["category"],
#     position: art["position"]
#   )
#   created_art.photo.attach(io: File.open(art["photo_url"]), filename: "#{art["title"]}.jpg", content_type: "image/jpg")
#   created_art.save
# end
# puts "Art created"

# EXAMPLE ABOVE FOR PARSING JSON
