class DesignersController < ApplicationController
  def index
    @designers = Designer.all.order("created_at DESC")
  end

  def show
    @designer = Designer.find(params[:id])
    @logos = @designer.logos
  end
end
