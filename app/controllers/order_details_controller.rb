class OrderDetailsController < ApplicationController

  def index
    @order_details = OrderDetail.all
    render json: @order_details
  end

  def show
    set_order_detail
    render json: @order_detail, serializer: OrderSerializer
  end

  def create
    @order_detail = OrderDetail.create(order_detail_params)
    if @order_detail.save
      render json: @order_detail, status: :created, location: @order_detail
    else
      render json: @order_detail.errors, status: :unprocessable_entity
    end
  end

  def update
    set_order_detail
    @order_detail.update(order_detail_params)
    if @order_detail.save
      render json: @order_detail, status: :created, location: @order_detail
    else
      render json: @order_detail.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_order_detail
    @order_detail.destroy
  end

  private
    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end
    def order_detail_params
      params.require(:order_details).permit(:products_id, :orders_id, :discount, :ext_price)
    end

end
