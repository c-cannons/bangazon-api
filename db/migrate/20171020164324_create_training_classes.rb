class CreateTrainingClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :training_classes do |t|
      t.string :class_name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_seats

      t.timestamps
    end
  end
end
