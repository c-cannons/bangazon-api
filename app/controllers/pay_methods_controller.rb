class PayMethodsController < ApplicationController

  def index
    @pay_methods = PayMethod.all
    json_response(@pay_methods)
  end

  def show
    @pay_method = PayMethod.find(params[:id])
    json_response(@pay_method)
  end

  def create
    @pay_method = PayMethod.create(pay_method_params)
  end

  def update
    @pay_method = PayMethod.find(params[:id])
    @pay_method.update(pay_method_params)
    json_response(@pay_method)
  end

  def destroy
    @pay_method = PayMethod.find(params[:id])
    @pay_method.destroy
  end

  private

    def pay_method_params
      params.require(:pay_method).permit(:payment_type, :account_number)
    end

end
