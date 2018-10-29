class SelfWateringPlantersController < ApplicationController
  def index
    @self_watering_planters = SelfWateringPlanter.all
  end

  def show
    @self_watering_planter = SelfWateringPlanter.find(params[:id])
  end

  def edit
    @self_watering_planter = SelfWateringPlanter.find(params[:id])
  end

  def new
    @self_watering_planter = SelfWateringPlanter.new
  end

  def create
    @self_watering_planter = SelfWateringPlanter.new(new_self_watering_planter_params)

    if @self_watering_planter.save
      flash[:notice] = "Planter added successfully"
      redirect_to self_watering_planter_path(@self_watering_planter)
    else
      flash[:notice] = @self_watering_planter.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @self_watering_planter = SelfWateringPlanter.find(params[:id])

   if @self_watering_planter.update(new_self_watering_planter_params)
     flash[:notice] = "Planter updated!"
     redirect_to self_watering_planter_path(@self_watering_planter)
   else
     flash[:notice] = @self_watering_planter.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @self_watering_planter = SelfWateringPlanter.find(params[:id])
  if @self_watering_planter.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_self_watering_planter_params
    params.require(:self_watering_planter).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options)
  end

end
