class Department < ApplicationRecord
  has_many :employees

  validates_presence_of :dept_name, :budget

end
