class CustomersController < ApplicationController

  def index
      if params[:customer_active] == "true"
        @customers = Customer.where(customer_active: true)
        json_response(@customers)
      elsif params[:customer_active] == "false"
        @customers = Customer.where.not(customer_active: true)
        json_response(@customers)
      else
        @customers = Customer.all
        json_response(@customers)
      end
  end

  def show
      @customer = Customer.find(params[:id])
      json_response(@customer)
  end

  def create
      @customer = Customer.create(customer_params)
      json_response(@customer)
      # redirect_to @customer
  end

  def update
      @customer = Customer.find(params[:id])
      @customer.update(customer_params)
      json_response(@customer)
  end

  private
    def customer_params
        params.require(:customers).permit(:customer_first_name, :customer_last_name, :customer_acct_date, :customer_active)
    end
end
