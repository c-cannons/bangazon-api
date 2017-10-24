class TrainingSeat < ApplicationRecord

  validates_presence_of :training_classes_id, :employees_id

end
