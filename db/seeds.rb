# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
    User.create(email: Faker::Internet.email, password:'12345678')
end
30.times do 
    Article.create(title:Faker::Food.dish , content:Faker::Quote.matz , user_id:rand(0..10))
end
User.create(email: "flo@flo.com", password:'12345678')