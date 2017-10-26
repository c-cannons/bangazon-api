class EmployeeComputersController < ApplicationController

def index
    @employee_computers = EmployeeComputer.all
    render json: @employee_computers
  end

  def show
    set_employee_computer
    render json: @employee_computer
  end

  def create
    @employee_computer = EmployeeComputer.new(employee_computer_params)

    if @employee_computer.save
      render json: @employee_computer, status: :created, location: @employee_computer
    else
      render json: @employee_computer.errors, status: :unprocessable_entity
    end
  end

  def update
    set_employee_computer
    if @employee_computer.update(employee_computer_params)
      render json: @employee_computer
    else
      render json: @employee_computer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_employee_computer
    @employee_computer.destroy
  end

  private

    def set_employee_computer
      @employee_computer = EmployeeComputer.find(params[:id])
    end

    def employee_computer_params
      params.require(:employee_computers).permit(:computers_id, :employees_id, :start_date, :end_date)
    end

end
