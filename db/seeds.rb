# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Amy", email: "topeka@amyzon.dev", password: "testing1")

ron_rash = Author.create!(first_name: "Ron", last_name:"Rash")

books = [
  { title: "Serena", price: 15.99 },
  { title: "One Foot in Eden", price: 24.99 },
  { title: "Saints at the River", price: 24.99 },
  { title: "Burning Bright", price: 12.99 }
]

books.each do |book|
  Book.create!(title: book[:title], price: book[:price], author: ron_rash)
end


