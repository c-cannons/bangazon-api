class TrainingSeatsController < ApplicationController

  def index
    @training_seats = TrainingSeat.all
    render json: @training_seats
  end

  def show
    set_training_seat
    render json: @training_seat
  end

  def create
    @training_seat = TrainingSeat.new(training_seat_params)
    if @training_seat.save
      render json: @training_seat, status: :created, location: @training_seat
    else
      render json: @training_seat.errors, status: :unprocessable_entity
    end
  end

  def update
    set_training_seat
    if @training_seat.update(training_seat_params)
      render json: @training_seat
    else
      render json: @training_seat, status: :unprocessable_entity
    end
  end

  def destroy
    set_training_seat
    @training_seat.destroy
  end

  private
    def set_training_seat
      @training_seat = TrainingSeat.find(params[:id])
    end

    def training_seat_params
      params.require(:training_seat).permit(:training_classes_id, :employees_id)
    end


end
