class ComputersController < ApplicationController

def index
  @computers = Computer.all
  json_response(@computers)
end

def show
  @computer = Computer.find(params[:id])
  json_response(@computer)
end

def create
  @computer = Computer.create(computer_params)
  json_response(@computer)
end

def update
  @computer = Computer.find(params[:id])
  @computer.update(computer_params)
  json_response(@computer)
end

def destroy
  @computer = Computer.find(params[:id])
  @computer.destroy
end

private

def computer_params
  params.require(:computers).permit(:computer_brand, :computer_model, :purchase_date, :decomm_date)
end

end
