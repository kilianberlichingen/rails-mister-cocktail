class CocktailsController < ApplicationController

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save # Killing 2 birds with 1 stone
      # Happy path
      redirect_to cocktail_path(@cocktail)
    else
      # Sad sad path
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
