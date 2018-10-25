class ConcretePlantersController < ApplicationController
  def index
    @concrete_planters = ConcretePlanter.all
  end

  def show
    @concrete_planter = ConcretePlanter.find(params[:id])
  end

end
