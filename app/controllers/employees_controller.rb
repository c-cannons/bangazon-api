class EmployeesController < ApplicationController
  # GET /employees
  def index
      @employees = Employee.all
      render json: @employees
  end

  # GET /employees/1
  def show
      set_employee
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
    set_employee
    if @employee.update(employee_params)
      render json: @employee
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
      params.require(:employee).permit(:employee_first_name, :employee_last_name, :employee_title, :is_supervisor, :department_id)
    end
end
