class EmployeeComputersController < ApplicationController

def index
    @employee_computers = EmployeeComputer.all
    render json: @employee_computers
  end

  def show
    @employee_computer = EmployeeComputer.find(params[:id])
    render json: @employee_computer
  end

  def create
    @employee_computer = EmployeeComputer.create(employee_computer_params)
    render json: @employee_computer
  end

  def update
    @employee_computer = EmployeeComputer.find(params[:id])
    @employee_computer.update(employee_computer_params)
    render json: @employee_computer
  end

  def destroy
    @employee_computer = EmployeeComputer.find(params[:id])
    @employee_computer.destroy
  end

  private
    def employee_computer_params
      params.require(:employee_computer).permit(:computers_id, :employees_id, :start_date, :end_date)
    end

end
