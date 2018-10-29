class ConcretePlantersController < ApplicationController
  def index
    @concrete_planters = ConcretePlanter.all
  end

  def show
    @concrete_planter = ConcretePlanter.find(params[:id])
  end

  def edit
    @concrete_planter = ConcretePlanter.find(params[:id])
  end

  def new
    @concrete_planter = ConcretePlanter.new
  end

  def create
    @concrete_planter = ConcretePlanter.new(new_concrete_planter_params)

    if @concrete_planter.save
      flash[:notice] = "Planter added successfully"
      redirect_to concrete_planter_path(@concrete_planter)
    else
      flash[:notice] = @concrete_planter.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @concrete_planter = ConcretePlanter.find(params[:id])

   if @concrete_planter.update(new_concrete_planter_params)
     flash[:notice] = "Planter updated!"
     redirect_to concrete_planter_path(@concrete_planter)
   else
     flash[:notice] = @concrete_planter.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @concrete_planter = ConcretePlanter.find(params[:id])
  if @concrete_planter.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_concrete_planter_params
    params.require(:concrete_planter).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options)
  end

end
