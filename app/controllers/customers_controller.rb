class CustomersController < ApplicationController
  def index

  end

  def show

  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new

    if @customer.save
      flash[:notice] = "Review added successfully."
      redirect_to product_groups_path
    else
      flash[:alert] = "Failed to save review."
      render :new
    end
end

end
