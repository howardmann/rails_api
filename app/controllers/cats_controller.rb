class CatsController < ApplicationController
  def index
    @cats = Cat.all   
    render 'cats/index.json.jbuilder'
  end

  def show
    @cat = Cat.find(params[:id])
    render 'cats/show.json.jbuilder'
  end
end
