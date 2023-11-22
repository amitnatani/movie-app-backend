# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


movies = [
  {
    title: 'The 400 Blows',
    year: 1959,
    genre: 'Drama',
    budget_in_cr: 20,
    box_office_earnings_in_cr: 40
  }, {
    title: 'La Haine',
    year: 1995,
    genre: 'Drama',
    budget_in_cr: 80,
    box_office_earnings_in_cr: 120
  }, {
    title: 'Man Bites Dog',
    year: 1992,
    genre: 'Comedy',
    budget_in_cr: 50,
    box_office_earnings_in_cr: 70
  }, {
    title: 'The Departed',
    year: 2006,
    genre: 'Thriller',
    budget_in_cr: 250,
    box_office_earnings_in_cr: 400
  }, {
    title: 'Eddie Murphy: Raw',
    year: 1987,
    genre: 'Documentary',
    budget_in_cr: 100,
    box_office_earnings_in_cr: 200
  }
]

movies.each do |movie|
  Movie.create!(movie)
end

User.create(email: 'user@gmail.com', first_name: 'First', last_name: 'User')