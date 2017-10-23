class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_first_name, null: false, limit: 10
      t.string :employee_last_name, null: false, limit: 20
      t.string :employee_title, null: false, limit: 20
      t.boolean :is_supervisor, null: false, default: false
      t.references :department, null: false, foreign_key: true
      t.timestamps

    end
  end
end
