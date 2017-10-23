class TrainingClassesController < ApplicationController

  def index
    @training_classes = Training_Classes.all
    json_response(@training_classes)
  end

  def show
    @training_classes = Training_Classes.find(params[:id])
    json_response(@training_classes)
  end

  def create
    @training_classes = Training_Classes.create(training_classes_params)
    json_response(@training_classes)
  end

  def update
    @training_classes = Training_Classes.find(params[:id])
    @training_classes.update(training_classes_params)
    json_response(@training_classes)
  end

  def destroy
    @training_classes = Training_Classes.find(params[:id])
    if Date.parse(:start_date) < Date.today
      @training_classes.destroy
    end
  end

  private

  def computer_params
      params.permit(:purchase_date, :decomm_date)
  end

end
