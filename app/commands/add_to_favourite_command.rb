class AddToFavouriteCommand
  def initialize(movie, user)
    @user = user
    @movie = movie
  end

  def run
    existing_record = FavouriteMovie.where(user_id: @user.id, movie_id: @movie.id).last
    if existing_record.present?
      return { message: 'Movie already marked as favourite' }, 422
    else
      FavouriteMovie.create!(user_id: @user.id, movie_id: @movie.id)
      return { message: 'Marked as favourite successfully' }, 200
    end
  end
end