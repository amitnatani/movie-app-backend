class MovieService
  attr_reader :query, :page, :offset, :user, :mode
  
  def initialize(params, user)
    @query = params[:query]&.downcase
    @page = params[:page] || 1
    @offset = (page - 1) * Movie::PER_PAGE
    @user = user
    @mode = params[:mode]
  end

  def data
    if query
      movies = Movie.where('lower(title) LIKE ?', "%#{query}%").order(year: :desc)
    else
      movies = Movie.order(year: :desc)
    end
    if mode == 'favourite'
      movies = movies.joins("INNER JOIN favourite_movies ON movies.id = favourite_movies.movie_id AND favourite_movies.user_id = #{user.id}")
    else
      movies = movies.joins("LEFT JOIN favourite_movies ON movies.id = favourite_movies.movie_id AND favourite_movies.user_id = #{user.id}")
    end
    movies.limit(Movie::PER_PAGE).offset(offset).select(:id, :title, :year, :genre, :user_id)
  end
end