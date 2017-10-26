class TrainingClassesController < ApplicationController

  def index
    @training_classes = TrainingClass.all
    render json: @training_classes
  end

  def show
    set_training_class
    render json: @training_class
  end

  def create
    @training_class = TrainingClass.new(training_classes_params)
    if @training_class.save
      render json: @training_class, status: :created, location: @training_class
    else
      render json: @training_class.errors, status: :unprocessable_entity
    end
  end

  def update
    set_training_class
    if @training_class.update(training_classes_params)
      render json: @training_class
    else
      render json: @training_class.errors, status: :unprocessable_entity
    end
  end

  def destroy
    set_training_class
    if Date.parse(@training_class[:end_date].to_s) < Date.today
      @training_class.destroy
    else
      render html: "You done messed up Chud. You can not delete a course that has not happened yet.  You are lame for even trying.", status: :bad
    end
  end

  private

  def set_training_class
    @training_class = TrainingClass.find(params[:id])
  end

  def training_classes_params
    params.require(:training_classes).permit(:class_name, :start_date, :end_date, :max_seats)
  end

end
