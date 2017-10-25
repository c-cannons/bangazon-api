class CreateTrainingSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :training_seats do |t|
      t.references :training_classe, index: true, null: false, foreign_key: true
      t.references :employee, index: true, null: false, foreign_key: true
      t.timestamps
    end
  end
end
