require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clean DB"
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

puts "start seed"
10.times do
  ingredient = Ingredient.create(
    name: Faker::FunnyName.two_word_name,
  )
  cocktail = Cocktail.create(
    name: Faker::Beer.name,
  )
  dose = Dose.create(
    description: Faker::Lorem.sentence,
  )
end

puts "finished"
