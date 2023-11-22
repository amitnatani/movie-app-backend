class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show add_to_favourite]

  def index
    movies = MovieService.new(params, @current_user).data
    render json: movies, status: :ok, 
           each_serializer: MovieSerializer
  end
  
  def show
    render json: @movie, status: :ok, 
      serializer: MovieDetailSerializer
  end
  
  def add_to_favourite
    response, status = AddToFavouriteCommand.new(@movie, @current_user).run
    render json: response, status: status
  end

  private
  def set_movie
    @movie = Movie.find_by(id: params[:id])
    render json: { error: 'Movie not found' } if @movie.nil?
  end
end
