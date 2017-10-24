class EmployeeComputer < ApplicationRecord

  belongs_to :computer, :employee

  validates_presence_of :comp_id, :employee_id, :start_date, :end_date

end
