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
      @order Order.create(order_params)
      json_response(@order)
      # redirect_to @order
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
        params.require(:order).permit(:customer_id, :pay_method_id)
    end
end
