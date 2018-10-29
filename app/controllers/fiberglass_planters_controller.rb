class FiberglassPlantersController < ApplicationController
  def index
    @fiberglass_planters = FiberglassPlanter.all
  end

  def show
    @fiberglass_planter = FiberglassPlanter.find(params[:id])
  end

  def edit
    @fiberglass_planter = FiberglassPlanter.find(params[:id])
  end

  def new
    @fiberglass_planter = FiberglassPlanter.new
  end

  def create
    @fiberglass_planter = FiberglassPlanter.new(new_fiberglass_planter_params)

    if @fiberglass_planter.save
      flash[:notice] = "Planter added successfully"
      redirect_to fiberglass_planter_path(@fiberglass_planter)
    else
      flash[:notice] = @fiberglass_planter.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @fiberglass_planter = FiberglassPlanter.find(params[:id])

   if @fiberglass_planter.update(new_fiberglass_planter_params)
     flash[:notice] = "Planter updated!"
     redirect_to fiberglass_planter_path(@fiberglass_planter)
   else
     flash[:notice] = @fiberglass_planter.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @fiberglass_planter = FiberglassPlanter.find(params[:id])
  if @fiberglass_planter.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_fiberglass_planter_params
    params.require(:fiberglass_planter).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options)
  end

end
