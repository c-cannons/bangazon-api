class ProductTypesController < ApplicationController

  def index
    @product_types = ProductType.all
    render json: @product_types
  end

  def show
    @product_type = ProductType.find(params[:id])
    render json: @product_type
  end

  def create
    @product_type = ProductType.create(product_type_params)
    if @product_type.save
      render json: @product_type, status: :created, location: @product_type
    else
      render json: @product_type.errors, status: :unprocessable_entity
    end
  end

  def update
    @product_type = ProductType.find(params[:id])
    @product_type.update(product_type_params)
    render json: @product_type
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
