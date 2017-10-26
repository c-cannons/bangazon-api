class ComputersController < ApplicationController

  def index
    @computers = Computer.all
    render json: @computers
  end

  def show
    set_computer
    render json: @computer
  end

  def create
    @computer = Computer.new(computer_params)

    if @computer.save
      render json: @computer, status: :created, location: @computer
    else
      render json: @computer.errors, status: :unprocessable_entity
    end
  end

  def update
    set_computer

    if @computer.update(computer_params)
      render json: @computer
    else
      render json: @computer.errors,
      status: :unprocessable_entity
    end
  end

  def destroy
    set_computer
    @computer.destroy
  end

private

  def set_computer
    @computer = Computer.find(params[:id])
  end

  def computer_params
    params.require(:computers).permit(:computer_brand, :computer_model, :purchase_date, :decomm_date)
  end

end
