class FiberglassPlantersController < ApplicationController
  def index
    @fiberglass_planters = FiberglassPlanter.all
  end

  def show
    @fiberglass_planter = FiberglassPlanter.find(params[:id])
  end

end
