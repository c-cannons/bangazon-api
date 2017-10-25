class TrainingSeat < ApplicationRecord

  validates_presence_of :training_class_id, :employee_id

end
