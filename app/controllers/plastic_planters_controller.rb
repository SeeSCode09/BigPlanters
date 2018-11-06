class PlasticPlantersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    @plastic_planters = PlasticPlanter.all
  end

  def show
    @plastic_planter = PlasticPlanter.find(params[:id])
  end

  def edit
    @plastic_planter = PlasticPlanter.find(params[:id])
  end

  def new
    @plastic_planter = PlasticPlanter.new
  end

  def create
    @plastic_planter = PlasticPlanter.new(new_plastic_planter_params)

    if @plastic_planter.save
      flash[:notice] = "Planter added successfully"
      redirect_to plastic_planter_path(@plastic_planter)
    else
      flash[:notice] = @plastic_planter.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @plastic_planter = PlasticPlanter.find(params[:id])

   if @plastic_planter.update(new_plastic_planter_params)
     flash[:notice] = "Planter updated!"
     redirect_to plastic_planter_path(@plastic_planter)
   else
     flash[:notice] = @plastic_planter.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @plastic_planter = PlasticPlanter.find(params[:id])
  if @plastic_planter.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_plastic_planter_params
    params.require(:plastic_planter).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options, :additional_info, :spec, :color_sheet)
  end

  def authorize_user
    if !current_user || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end


end
