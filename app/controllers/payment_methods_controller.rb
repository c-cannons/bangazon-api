class PaymentMethodsController < ApplicationController

  def index
    @payment_methods = PaymentMethod.all
    json_response(@payment_method)
  end

  def show
    @payment_method = PaymentMethod.find(params[:id])
    json_response(@payment_method)
  end

  def create
    @payment_method = PaymentMethod.create(@payment_method_params)
  end

  def update
    @payment_method = PaymentMethod.find(params[:id])
    @payment_method.update(@payment_method_params)
    json_response(@payment_method)
  end

  def delete
    @payment_method = PaymentMethod.find(params[:id])
    @payment_method.destroy
  end

  private

    def payment_method_params
      params.require(:payment_method).permit(:payment_type, :account_number)
    end

end
