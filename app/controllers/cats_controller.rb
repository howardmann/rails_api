class CatsController < ApplicationController
  def index
    @cats = Cat.all   
    render 'cats/index.json.jbuilder'
  end

  def show
    @cat = Cat.find(params[:id])
    render 'cats/show.json.jbuilder'
  end

  def create
    @cat = Cat.create(cat_params)
    render json: @cat        
  end
  
  private
    def cat_params
      # Here we simply use standard api response.
      # We will serialize the POST payload on the Ember client side
      params.require(:cat).permit(:name, :age, :color)
    end
end
