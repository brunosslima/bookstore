# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
book = Book.create(name: "Harry Potter", price: 24.95)
book2 = Book.create(name: "The Outliers", price: 19.99)
book3 = Book.create(name: "Sherlock Holmes", price: 18.49)

10.times do
  book.sells << Sell.create(quantity: rand(2..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end

10.times do
  book2.sells << Sell.create(quantity: rand(2..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end

10.times do
  book3.sells << Sell.create(quantity: rand(2..15), day: Sell::DAYS[rand(0..(Sell::DAYS.length))])
end