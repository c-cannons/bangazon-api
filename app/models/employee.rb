class Employee < ApplicationRecord
  # has_one :computer
  belongs_to :department
  has_many :training_classes, through: :training_seat
  has_many :computers, through: :employee_computer

  validates_presence_of :employee_first_name, :employee_last_name, :employee_title, :department_id
end
