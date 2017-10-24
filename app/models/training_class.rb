class TrainingClass < ApplicationRecord

  has_many :employees, through: :training_seats

  validates_presence_of :class_name, :start_date, :end_date, :max_seats

  validates :max_seats, numericality: { less_than_or_equal_to: 20 }

end
