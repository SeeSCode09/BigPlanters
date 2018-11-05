class CustomersController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :update]
  before_action :authorize_user, except: [:new, :create, :update]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = ConcretePlanter.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(new_customer_params)

    if @customer.save
      CustomerMailer.new_customer(@customer).deliver_now
      flash[:notice] = "Form submitted successfully."
      redirect_to product_groups_path
    else
      flash[:alert] = "Failed to save form."
      render :new
    end
  end

    def update
     @customer = Customer.find(params[:id])

     if @customer.update(new_customer_params)
       flash[:notice] = "Customer updated!"
       redirect_to customer_path(@customer)
     else
       flash[:notice] = @customer.errors.full_messages.join(', ')
       render :edit
     end
    end

    def destroy
    @customer = Customer.find(params[:id])
    if @customer.destroy
      flash[:notice] = "Customer deleted!"
      redirect_to customers_path
    else
      flash[:alert] = "Failed to delete customer"
      render :new
    end
end

  private

  # Only allow a trusted parameter "white list" through.
  def new_customer_params
    params.require(:customer).permit(:name, :email, :phone, :description, :company, :address, :city, :state, :zip)
  end

  def authorize_user
    if !current_user || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

end
