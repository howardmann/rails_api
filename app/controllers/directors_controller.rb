class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render json: @directors, include: ['movies', 'movies.title', 'movies.year', 'movies.box_office']
  end

  def show
    @director = Director.find(params[:id])
    render json: @director, include: ['movies', 'movies.title', 'movies.year', 'movies.box_office']
  end

  def create
    @director = Director.create(director_params)
    render json: @director    
  end

  def update
    @director = Director.find(params[:id])
    @director.update(director_params)
    @director.save
    render json: @director    
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    head :no_content
  end

  private
    def director_params
      params.require(:data).require(:attributes).permit(:name, :age)
    end

end
