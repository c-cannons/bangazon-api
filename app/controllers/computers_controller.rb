class ComputersController < ApplicationController
# GET /computers
def index
  @computers = Computer.all
  render json: @computers
end

# GET /computers/1
def show
  @computer = Computer.find(params[:id])
  render json: @computer
end

# POST /computers
def create

  @computer = Computer.new(computer_params)

  if @computer.save
    render json: @computer, status: :created, location: @computer
  else
    render json: @computer.errors, status: :unprocessable_entity
  end

end

#PATCH/PUT /employees/1
def update

  if @computer.update(computer_params)
    render json: @computer
  else
    render json: @computer.errors, status: :unprocessable_entity
  end
end

def destroy
  @computer.destroy
end

private

def set_employee
  @employee = Employee.find(params[:id])
end

def computer_params
  params.require(:computers).permit(:computer_brand, :computer_model, :purchase_date, :decomm_date)
end

end
