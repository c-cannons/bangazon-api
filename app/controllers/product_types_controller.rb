class ProductTypesController < ApplicationController

  def index
    @product_types = ProductType.all
      json_response(@product_types)
  end

  def show
      @product_type = ProductType.find(params[:id])
      json_response(@product_type)
  end

  def create
      @product_type = ProductType.create(product_type_params)
      json_response(@product_type)
      # redirect_to @product_type
  end

  def update
      @product_type = ProductType.find(params[:id])
      @product_type.update(product_type_params)
      json_response(@product_type)
  end

  def delete
    @product_type = ProductType.find(params[:id])
    @product_type.destroy
  end

  private
    def product_type_params
        params.require(:product_types).permit(:product_type_name)
    end
end
