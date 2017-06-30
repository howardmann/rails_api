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
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
