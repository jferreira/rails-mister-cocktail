# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

50.times do
  ingredient = Ingredient.create(
    name: Faker::Commerce.product_name
    )
  ingredient.save
end

# 100.times do
#   post = Post.new(
#     title: Faker::Commerce.product_name,
#     url: Faker::Internet.url,
#     votes: (0..1000).to_a.sample
#   )
#   post.save
# end
