class MetalPlantersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @metal_planters = MetalPlanter.all
  end

  def show
    @metal_planter = MetalPlanter.find(params[:id])
  end

  def edit
    @metal_planter = MetalPlanter.find(params[:id])
  end

  def new
    @metal_planter = MetalPlanter.new
  end

  def create
    @metal_planter = MetalPlanter.new(new_metal_planter_params)

    if @metal_planter.save
      flash[:notice] = "Planter added successfully"
      redirect_to metal_planter_path(@metal_planter)
    else
      flash[:notice] = @metal_planter.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @metal_planter = MetalPlanter.find(params[:id])

   if @metal_planter.update(new_metal_planter_params)
     flash[:notice] = "Planter updated!"
     redirect_to metal_planter_path(@metal_planter)
   else
     flash[:notice] = @metal_planter.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @metal_planter = MetalPlanter.find(params[:id])
  if @metal_planter.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_metal_planter_params
    params.require(:concrete_planter).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options)
  end

end
