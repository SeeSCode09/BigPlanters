class MetalPlantersController < ApplicationController
  def index
    @metal_planters = MetalPlanter.all
  end

  def show
    @metal_planter = MetalPlanter.find(params[:id])
  end

end
