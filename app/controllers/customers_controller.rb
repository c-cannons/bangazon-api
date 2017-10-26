class CustomersController < ApplicationController

  def index
      if params[:customer_active] == "true"
        @customers = Customer.where(customer_active: true)
        render json: @customers
      elsif params[:customer_active] == "false"
        @customers = Customer.where.not(customer_active: true)
        render json: @customers
      else
        @customers = Customer.all
        render json: @customers
      end
  end

  def show
      set_customer
      render json: @customer
  end

  def create
      @customer = Customer.new(customer_params)

      if @customer.save
        render json: @customer, status: :created, location: @customer
      else
        render json: @customer.errors, staus: :unprocessable_entity
      # redirect_to @customer
    end
  end

  def update
    set_customer

    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  private

    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
        params.require(:customers).permit(:customer_first_name, :customer_last_name, :customer_acct_date, :customer_active)
    end
end
