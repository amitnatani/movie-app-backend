class FavouriteMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates_uniqueness_of :movie, scope: :user
end
