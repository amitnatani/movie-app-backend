class Movie < ApplicationRecord
  PER_PAGE = 10

  has_many :favourite_movies, dependent: :restrict_with_exception
end
