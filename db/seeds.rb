# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database...."
Restaurant.destroy_all

puts "Creating restaurant...."
dishoom = {name: "dishoom", address:"7 Boundary st, London E2 7JE", rating: 5}
pizza_east = {name:"Pizza East", address:"56A Shore high st, london"}

[dishoom, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "created #{restaurant.name}"
end
puts "Finished!!!!"
