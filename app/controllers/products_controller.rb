class ProductsController < ApplicationController
  # GET /products
  def index
    @products = Product.all
    render json: @products
  end

  # GET /products/1
  def show
    set_product
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  #PATCH/PUT /products/1
  def update
    set_product
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_product
    @product.destroy
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:products).permit(:product_name, :product_price, :product_description, :product_types_id )
    end

end
