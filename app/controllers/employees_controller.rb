class EmployeesController < ApplicationController
  # GET /employees
  def index
      @employees = Employee.all
      render json: @employees
  end

  # GET /employees/1
  def show
      render json: @employee
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee, status: :created, location: @employee
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  #PATCH/PUT /employees/1
  def update
    if @employee.update(employee_params)
      render json: @student
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # FINISH THIS ******
    def employee_params
      # params.require(:employee).permit()
    end
end
