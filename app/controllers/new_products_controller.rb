class NewProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

  def index
    @new_products = NewProduct.all
  end

  def show
    @new_product = NewProduct.find(params[:id])
  end

  def edit
    @new_product = NewProduct.find(params[:id])
  end

  def new
    @new_product = NewProduct.new
  end

  def create
    @new_product = NewProduct.new(new_new_product_params)

    if @new_product.save
      flash[:notice] = "Planter added successfully"
      redirect_to new_product_path(@new_product)
    else
      flash[:notice] = @new_product.errors.full_messages.join(', ')
      render :new
    end
  end

  def update
   @new_product = NewProduct.find(params[:id])

   if @new_product.update(new_new_product_params)
     flash[:notice] = "Planter updated!"
     redirect_to new_product_path(@new_product)
   else
     flash[:notice] = @new_product.errors.full_messages.join(', ')
     render :edit
   end
  end

  def destroy
  @new_product = NewProduct.find(params[:id])
  if @new_product.destroy
    flash[:notice] = "Planter deleted!"
    redirect_to root_path
  else
    flash[:alert] = "Failed to delete planter"
    render :new
  end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_new_product_params
    params.require(:new_product).permit(:product_name, :price, :description, :model, :order, :image, :dimensions, :weight, :colors, :finishes, :size_options, :additional_info, :spec, :color_sheet)
  end

  def authorize_user
    if !current_user || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

end
