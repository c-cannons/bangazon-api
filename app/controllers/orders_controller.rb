class OrdersController < ApplicationController

  def index
    @orders = Order.all
    json_response(@orders)
  end

  def show
    @order = Order.find(params[:id])
    json_response(@order)
  end

  def create
    @order = Order.create(order_params)
    json_response(@order)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    json_response(@order)
  end

  def delete
    @order = Order.find(params[:id])
    @order.destroy
  end

  private
    def order_params
        params.require(:orders).permit(:customers_id, :pay_methods_id)
    end
end
