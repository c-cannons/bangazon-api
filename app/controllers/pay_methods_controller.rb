class PayMethodsController < ApplicationController

  def index
    @pay_methods = PayMethod.all
    render json: @pay_methods
  end

  def show
    set_pay_method
    render json: @pay_method
  end

  def create
    @pay_method = PayMethod.create(pay_method_params)
    if @pay_method.save
      render json: @pay_method, status: :created, location: @pay_method
    else
      render json: @pay_method.errors, status: :unprocessable_entity
    end
  end

  def update
    set_pay_method
    @pay_method.update(pay_method_params)
    if @pay_method.save
      render json: @pay_method, status: :created, location: @pay_method
    else
      render json: @pay_method.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_pay_method
    @pay_method.destroy
  end

  private
    def set_pay_method
      @pay_method = PayMethod.find(params[:id])
    end
    def pay_method_params
      params.require(:pay_methods).permit(:payment_type, :account_number)
    end

end
