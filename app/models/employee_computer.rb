class EmployeeComputer < ApplicationRecord

  # belongs_to :computer, :employee

  validates_presence_of :computers_id, :employees_id, :start_date, :end_date

end
