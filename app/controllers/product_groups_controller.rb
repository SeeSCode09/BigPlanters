class ProductGroupsController < ApplicationController
  def index
    @product_groups = ProductGroup.all
  end

  def show
    @product = ProductGroup.find(params[:id])
  end

end
