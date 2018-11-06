# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'
require "faker"
require 'awesome_print'

puts "---------------------------------"
puts
puts "im starting to seed the database"

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(url).read
# ingredients = JSON.parse(ingredients_serialized)

# ap ingredients['strIngredient1']

# ingredients

# ingredients.each do |ingredient|
#  puts ingredient[strIngredient1]
# end


ingredients_array = []

3.times do

  ingredient = Ingredient.create(
    name: Faker::Commerce.product_name
    )

    puts ingredient.id
    puts ingredient.name
    ingredient.save!

end


3.times do

  cocktail = Cocktail.create(
    name: Faker::Cannabis.strain
    )

    puts cocktail.id
    puts cocktail.name
    cocktail.save!

end




puts "---------------------------------"
puts
puts "END OF SEEDING"

# 100.times do
#   post = Post.new(
#     title: Faker::Commerce.product_name,
#     url: Faker::Internet.url,
#     votes: (0..1000).to_a.sample
#   )
#   post.save
# end
