class DosesController < ApplicationController


# CREATE -----N.C-------------------------------------

# -- PREFEX: ---------
# new_cocktail_dose GET

# -- VERB: -----------
# URI PATTERN:

# -- URI PATTERN: ----
# cocktails/1/doses/new

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

# THEN GO TO VIEW ----------------------------------

# -- PREFEX: ---------
# cocktail_dose POST

# -- VERB: -----------
# URI PATTERN:

# -- URI PATTERN: ----
# cocktails/1/doses
  def create



    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(params.require(:dose).permit(:description, :ingredient_id))
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

# DELETE --------D----------------------------------

# -- PREFEX: ---------
# cocktail_dose

# -- VERB: -----------
# DELETE

# -- URI PATTERN: ----
# cocktails/1/doses/1

  def destroy
    @dose = Restaurant.find(params[:id])

    if @dose.delete
      redirect_to dose_path(@cocktail)
    else
      render :new
    end

  end

# READ ------I.S------------------------------------
  # def index
  #   @doses = Dose.all
  # end

  # def show
  #   @dose = Dose.find(params[id])
  # end

# # UPDATE  ------U.E------------------------------------
#   def update
#     @does = Does.find(params[:id])
#     @does.update(params.require(:dose).permit(:description, :cocktail_id, :does_id))
#     redirect_to does_path(@does)
#   end

#   def edit
#     @does = Does.find(params[:id])
#     @does.save
#     redirect_to does_path(@cocktail)
#   end

end
