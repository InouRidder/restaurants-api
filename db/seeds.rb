# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

raise 'No destroying the production databaseplease!' if Rails.env.production?

puts "Emptying DB"

User.destroy_all
Restaurant.destroy_all

user = User.create(email: 'inou@gmail.com', password: 'password')

10.times do |i|
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    user: user
  )

  puts "#{resto.name} created!"

  rand(10).times do
    Comment.create(
      restaurant: resto,
      content: Faker::Restaurant.review
    )
  end
end


# t.string "name"
#     t.string "address"
#     t.bigint "user_id"
