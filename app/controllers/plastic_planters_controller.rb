class PlasticPlantersController < ApplicationController
  def index
    @plastic_planters = PlasticPlanter.all
  end

  def show
    @plastic_planter = PlasticPlanter.find(params[:id])
  end

end
