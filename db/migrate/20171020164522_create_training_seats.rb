class CreateTrainingSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :training_seats do |t|
      t.references :class_id, null: false, foreign_key: true
      t.references :employee_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
