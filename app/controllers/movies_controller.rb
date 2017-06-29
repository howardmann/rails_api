class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies, include: ['director', 'director.name', 'director.age']
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie, include: ['director', 'director.name', 'director.age']
  end

  def create
    puts "movie_params: #{movie_params}"
    @movie = Movie.create(movie_params)
    render json: @movie    
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    @movie.save
    render json: @movie    
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    # returns a http status code 204 no content with an empty body. Ember expects this
    head :no_content
  end

  private
    def movie_params
      # params.require(:movie).permit(:title, :year, :box_office, :director_id)
      # Require jsonAPI payload
      # params.require(:data).require(:attributes).permit(:title, :year, :box_office, :director_id)
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end

end
