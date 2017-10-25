class OrderDetailsController < ApplicationController

  def index
    @order_details = OrderDetail.all
    json_response(@order_details)
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
    json_response(@order_detail)
  end

  def create
    @order_detail = OrderDetail.create(order_detail_params)
    json_response(@order_detail)
  end

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.update(order_detail_params)
    json_response(@order_detail)
  end

  def destroy
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.destroy
  end

  private
    def order_detail_params
      params.require(:order_details).permit(:products_id, :orders_id, :discount, :ext_price)
    end

end
