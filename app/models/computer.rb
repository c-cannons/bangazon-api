class Computer < ApplicationRecord

  has_many :employees, through: :employee_computer

  validates_presence_of :computer_brand, :computer_model, :purchase_date, :decomm_date

end
