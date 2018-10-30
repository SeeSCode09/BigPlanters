class ServiceAreasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @service_areas = ServiceArea.all
  end

  def show
    @service_area = ServiceArea.find(params[:id])
  end

end
