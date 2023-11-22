class User < ApplicationRecord
  has_many :favourite_movies, dependent: :restrict_with_exception
end
