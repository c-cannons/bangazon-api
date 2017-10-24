class TrainingSeat < ApplicationRecord

  belongs_to :employee, :training_class

  validates_presence_of :class_id, :employee_id

end
