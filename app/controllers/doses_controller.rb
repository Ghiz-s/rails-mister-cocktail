class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  # def create
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose = Dose.new(dose_params)
  #   @dose.cocktail = @cocktail
  #   if @cocktail.save
  #     redirect_to cockail_path(@cocktail)
  #   else
  #     render "cocktails/show"
  #   end
  # end

  private

  def dose_params
    params.require(:doses).permit(:description)
  end
end
