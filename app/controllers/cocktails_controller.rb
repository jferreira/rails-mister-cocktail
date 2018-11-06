class CocktailsController < ApplicationController

# READ ------I.S------------------------------------

  # GET
  # /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET
  # /cocktails/:id
  def show
    @cocktail = Cocktail.find(params[:id])
  end

# CREATE -----N.C-------------------------------------

  def new
    @cocktail = Cocktail.new
  end

  def create

    @cocktail = Cocktail.new(params.require(:cocktail).permit(:name))
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

# UPDATE  ------U.E------------------------------------
  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(params.require(:cocktail).permit(:name, :dose_id))
    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

# DELETE --------D----------------------------------
  def destroy
    @cocktail = Restaurant.find(params[:id])
    @cocktail.delete
    redirect_to cocktail_path(@cocktail)
  end

end
