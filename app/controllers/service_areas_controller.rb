class ServiceAreasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    @service_areas = ServiceArea.all
  end

  def show
    @service_area = ServiceArea.find(params[:id])
  end

  def edit
    @service_area = ServiceArea.find(params[:id])
  end

  def new
    @service_area = ServiceArea.new
  end

  def create
    @service_area = ServiceArea.new(new_service_area_params)

    if @service_area.save
      flash[:notice] = "Service Area added successfully"
      redirect_to service_area_path(@service_area)
    else
      flash[:notice] = @service_area.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @service_area = ServiceArea.find(params[:id])

   if @service_area.update(new_service_area_params)
     flash[:notice] = "Service Area updated!"
     redirect_to service_area_path(@service_area)
   else
     flash[:notice] = @service_area.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @service_area = ServiceArea.find(params[:id])
  if @service_area.destroy
    flash[:notice] = "Service Area deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_service_area_params
    params.require(:service_area).permit(:state, :description)
  end

  def authorize_user
    if !current_user || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

end
