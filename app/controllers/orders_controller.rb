class OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    set_order
    render json: @order
  end

  def create
    @order = Order.create(order_params)

    if @order.save
      render json: @order, status: :created, location: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def update
    set_order

    if @order.update(order_params)
      render json: @order
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_order
    @order.destroy
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:orders).permit(:customers_id, :pay_methods_id)
    end
end
