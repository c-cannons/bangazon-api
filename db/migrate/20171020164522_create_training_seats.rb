class CreateTrainingSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :training_seats do |t|
      t.integer :class_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
