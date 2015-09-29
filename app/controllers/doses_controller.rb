class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]
  def show
  end

  def create
    @cocktail=Cocktail.find(params[:id])
  end

  def new
  end

  def destroy
  end

  private

  def set_cocktail
      @cocktail = Cocktail.find(params[:id])
  end

  def doses_params
      params.require(:cocktail).permit(:ingredient, :dose)
  end

end
