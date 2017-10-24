class CreateTrainingClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :training_classes do |t|
      t.string :class_name, null: false, limit: 20
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :max_seats, null: false, limit: 1

      t.timestamps
    end
  end
end
