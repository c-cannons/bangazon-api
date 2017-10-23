class ProductsController < ApplicationController

  def index
    @products = Product.all
    json_response(@products)
  end

  def show
    @product = Product.find(params[:id])
    json_response(@product)
  end

  def create
    @product = Customer.create(product_params)
  end

  def update
    @product = Product.find(params[:id])
    @customer.update(product_params)
    json_response(@product)
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
  end

  private

    def product_params
      params.require(:product).permit(:product_name, :product_price, :product_description, :product_type_id )
    end

end
