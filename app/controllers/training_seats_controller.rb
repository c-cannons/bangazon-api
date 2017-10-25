class TrainingSeatsController < ApplicationController

  def index
    @training_seats = TrainingSeat.all
    render json: @training_seats
  end

  def show
    @training_seat = TrainingSeat.find(params[:id])
    render json: @training_seat
  end

  def create
    @training_seat = TrainingSeat.create(training_seat_params)
    render json: @training_seat
  end

  def update
    @training_seat = TrainingSeat.find(params[:id])
    @training_seat.update(training_seat_params)
    render json: @training_seat
  end

  def destroy
    @training_seat = TrainingSeat.find(params[:id])
    @training_seat.destroy
  end

  private
    def training_seat_params
      params.require(:training_seat).permit(:training_class_id, :employee_id)
    end


end
